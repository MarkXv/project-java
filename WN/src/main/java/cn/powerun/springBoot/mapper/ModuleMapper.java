package cn.powerun.springBoot.mapper;

import cn.powerun.springBoot.pojo.user.Module;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface ModuleMapper {

    //查询全部模块信息
    List<Module> findAllModule();

    //根据模块id查询模块信息
    Module findModuleById(String moduleId);

    //添加模块
    void saveModule(Module module);

    //删除模块
    void deleteModule(String[] moduleIds);

    //修改模块
    void updateModule(Module module);

    //修改状态
    void updateState(@Param("moduleIds") String[] moduleIds, @Param("state") int state);

    /**
     * 获取所有除自己之外的其它模块
     * @param moduleId
     * @return
     */
    List<Module> findModuleExpId(String moduleId);

}
