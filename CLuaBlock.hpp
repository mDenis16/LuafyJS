#include <memory>
#include <vector>

class CLuaComponent;
class CLuaBlock{
public:
    inline void AddComp(std::shared_ptr<CLuaComponent> comp){
        m_Comps.push_back(std::move(comp));
    }
    std::vector<std::shared_ptr<CLuaComponent>> m_Comps;
    CLuaBlock(){

    }
};