package wn.backend.manage.mapper;


/**
 * Created by Administrator on 2017/10/20.
 */
public interface ModuleRoleMapper {

    //删除角色模块关联表
    void deleteModuleRole(String[] moduleIds);

    //查询模块是否含有角色
    String findRoleId(String[] moduleIds);
}
