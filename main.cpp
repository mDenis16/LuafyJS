#include <iostream>

#include "CLuaComponent.hpp"
#include "CLuaFunction.hpp"
#include "CLuaConditional.hpp"
#include "CLuaVariable.hpp"
#include "CLuaLocalVariable.hpp"
#include "CLuaGlobalVariable.hpp"

#include "CLuaParser.hpp"

#include <fstream>
#include <sstream>

int main(){

    std::ifstream file("sample_lua.lua");
    


    
    std::stringstream buffer;
    buffer << file.rdbuf();

    std::string fileContent = buffer.str();

    CLuaParser parser;
    parser.ParseFile(fileContent);
}