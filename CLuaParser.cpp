
#include "inc.hpp"


#include "CLuaComponent.hpp"
#include "CLuaBlock.hpp"
#include "CLuaFunction.hpp"
#include "CLuaConditional.hpp"
#include "CLuaVariable.hpp"
#include "CLuaLocalVariable.hpp"
#include "CLuaGlobalVariable.hpp"

#include <memory>

#include "CLuaParser.hpp"

using namespace std;

bool CLuaParser::HandleLocalVariable(CLuaLocalVariable &variable)
{
    if (!token_is_then_assign(token_t::e_symbol, variable.name))
        return false;

     if (!token_is(token_t::e_eq))
        return false;

    std::cout << "Got local variabel with name " << variable.name << std::endl;
    return true;
}
bool CLuaParser::HandleGlobalVariable(CLuaGlobalVariable &variable)
{
    if (!token_is_then_assign(token_t::e_symbol, variable.name))
        return false;
    
    std::cout << "found global variable " << variable.name << std::endl;

    if (!token_is(token_t::e_eq))
        return false;



    return true;
}

bool CLuaParser::Handle(std::unique_ptr<CLuaBlock>& block)
{

    if (token_is(token_t::e_symbol, "function"))
    {
        CLuaFunction func;
        if ( HandleFunction(func) )
             m_Block->AddComp(std::make_shared<CLuaComponent>(func));
    }
    else if (token_is(token_t::e_symbol, "local"))
    {
        CLuaLocalVariable func;
       if ( HandleLocalVariable(func))
            m_Block->AddComp(std::make_shared<CLuaComponent>(func));
    }
    else if (token_is(token_t::e_symbol, "end")){
        block_count--;
        std::cout << "got end " << std::endl;
    }
    else if (token_is(token_t::e_symbol, "return")){
        
    }
    else
    {
        CLuaGlobalVariable func;
        if (HandleGlobalVariable(func)){
             m_Block->AddComp(std::make_shared<CLuaComponent>(func));
        }else{
            return false;
        }
    
    }

    return true;
}
bool CLuaParser::HandleFunction(CLuaFunction &function)
{
    if (!token_is_then_assign(token_t::e_symbol, function.funcName))
        return false;

    if (!token_is(token_t::e_lbracket))
        return false;

    if (!token_is(token_t::e_rbracket))
    {
        for (;;)
        {
            // (x,y,z,....w)
            if (!token_is_then_assign(token_t::e_symbol, function.m_Args))
                return false;

            if (token_is(token_t::e_rbracket))
                break;

            if (!token_is(token_t::e_comma))
                return false;
        }
    }
    block_count++;

    function.m_Block = std::make_unique<CLuaBlock>();


    std::cout << "Got function " << function.funcName << " with args ";
    for (size_t i = 0; i < function.m_Args.size(); i++)
        std::cout << function.m_Args.at(i) << ", ";

    std::cout << std::endl;

    while (block_count)
    {
        Handle(function.m_Block);
        //std::cout << "block_count " << block_count << std::endl;

        next_token();
    }

    return true;
}
void CLuaParser::ParseFile(std::string content)
{

    if (!init(content))
    {
        cout << " failed to init parser " << std::endl;
        return;
    }

    m_Block = std::make_unique<CLuaBlock>();

    while (!lexer().finished())
    {
        Handle(m_Block);
        next_token();
    }
}