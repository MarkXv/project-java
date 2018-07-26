package wn.backend.manage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wn.backend.manage.mapper.ModuleMapper;
import wn.backend.manage.mapper.ModuleRoleMapper;
import wn.backend.manage.pojo.Module;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class ModuleServiceImpl implements ModuleService {

    @Autowired
    private ModuleMapper moduleMapper;

    @Autowired
    private ModuleRoleMapper moduleRoleMapper;


    public List<Module> findAllModule() {
        return moduleMapper.findAllModule();
    }


    public Module findModuleById(String moduleId) {
        return moduleMapper.findModuleById(moduleId);
    }


    public void saveModule(Module module) {
        module.setModuleId(UUID.randomUUID().toString());

        module.setCreateTime(new Date());
        module.setUpdateTime(module.getUpdateTime());
        System.out.println(module);
        moduleMapper.saveModule(module);
    }


    public void deleteModule(String[] moduleIds) {

        moduleMapper.deleteModule(moduleIds);
        System.out.print(moduleIds);

        if(moduleRoleMapper.findRoleId(moduleIds)!=null||"".equals(moduleRoleMapper.findRoleId(moduleIds))){
            moduleRoleMapper.deleteModuleRole(moduleIds);
        }
    }

    public void updateModule(Module module) {

        module.setUpdateTime(new Date());

        System.out.println(module);
        moduleMapper.updateModule(module);

    }


    public void updateState(String[] moduleIds, int state) {
        moduleMapper.updateState(moduleIds,state);
    }

    public List<Module> findModuleExpId(String moduleId) {
        return moduleMapper.findModuleExpId(moduleId);
    }


}
