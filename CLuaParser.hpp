#include <iostream>
#include <vector>
#include "lexertk.hpp"


class CLuaParser : public lexertk::parser_helper {
public:

    std::unique_ptr<CLuaBlock> m_Block;
    int block_count = 0;
    void ParseFile(std::string content);

    void ParseBody();
    bool Handle(std::unique_ptr<CLuaBlock>& block);
    bool HandleFunction(CLuaFunction& function);
    bool HandleLocalVariable(CLuaLocalVariable& variable);
    bool HandleGlobalVariable(CLuaGlobalVariable& variable);
};