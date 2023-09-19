#include <iostream>
#include <vector>
#include "lexertk.hpp"

class CLuaFunction : CLuaComponent {
public:
    std::string funcName;
    std::vector<std::string> args;
    std::vector<CLuaComponent> comps;
    void Handle();
};