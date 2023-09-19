#include <iostream>
#include <vector>
#include "lexertk.hpp"


class CLuaParser : public lexertk::parser_helper {
public:

    int block_count = 0;
    void ParseFile(std::string content);

    void ParseBody();
    bool Handle();
    bool HandleFunction(CLuaFunction& function);
    bool HandleLocalVariable(CLuaLocalVariable& variable);
    bool HandleGlobalVariable(CLuaGlobalVariable& variable);
};