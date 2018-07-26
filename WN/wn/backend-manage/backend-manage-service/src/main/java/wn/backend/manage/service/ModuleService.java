package wn.backend.manage.service;



import java.util.List;

import wn.backend.manage.pojo.Module;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface ModuleService {
    //查询全部的模块信息
    List<Module> findAllModule();

    //通过Id查询模块信息
    Module findModuleById(String moduleId);

    //添加模块信息
    void saveModule(Module module);

    //删除选中的模块
    void deleteModule(String[] moduleIds);

    //修改模块
    void updateModule(Module module);

    //修改模块状态
    void updateState(String[] moduleIds, int state);

    /**
     * 获取所有除自己之外的其它模块
     * @param moduleId
     * @return
     */
    List<Module> findModuleExpId(String moduleId);
}
