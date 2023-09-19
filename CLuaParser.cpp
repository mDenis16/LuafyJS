

#include "CLuaComponent.hpp"
#include "CLuaFunction.hpp"
#include "CLuaConditional.hpp"
#include "CLuaVariable.hpp"
#include "CLuaLocalVariable.hpp"
#include "CLuaGlobalVariable.hpp"

#include "CLuaParser.hpp"

using namespace std;

bool CLuaParser::HandleLocalVariable(CLuaLocalVariable &variable)
{
    if (!token_is_then_assign(token_t::e_symbol, variable.name))
        return false;
    
    std::cout << "Got local variabel with name " << variable.name << std::endl;
    return true;
}
bool CLuaParser::HandleGlobalVariable(CLuaGlobalVariable &variable)
{
    return true;
}

bool CLuaParser::Handle()
{

    if (token_is(token_t::e_symbol, "function"))
    {
        CLuaFunction func;
        HandleFunction(func);
    }
    else if (token_is(token_t::e_symbol, "local"))
    {
        CLuaLocalVariable func;
        HandleLocalVariable(func);
    }
    else
    {
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
            if (!token_is_then_assign(token_t::e_symbol, function.args))
                return false;

            if (token_is(token_t::e_rbracket))
                break;

            if (!token_is(token_t::e_comma))
                return false;
        }
    }
    block_count++;
    std::cout << "Got function " << function.funcName << " with args ";
    for (size_t i = 0; i < function.args.size(); i++)
        std::cout << function.args.at(i) << ", ";

    std::cout << std::endl;

    while (block_count)
    {
        Handle();
        std::cout << "block_count " << block_count << std::endl;
        if (token_is(token_t::e_symbol, "end")){
            block_count--;
             break;
        }
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

    while (!lexer().finished())
    {
        Handle();
        next_token();
    }
}