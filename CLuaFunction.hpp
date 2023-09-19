#include <iostream>
#include <vector>
#include "lexertk.hpp"
#include <memory>
class CLuaFunction : public CLuaComponent {
public:
    std::string funcName;
    std::vector<std::string> m_Args;

    std::unique_ptr<CLuaBlock> m_Block;
    
    void Handle();
};