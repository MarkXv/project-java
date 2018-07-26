package cn.powerun.springBoot.service;

import cn.powerun.springBoot.pojo.spot.Flow;
import cn.powerun.springBoot.pojo.spot.Spots;
import cn.powerun.springBoot.tools.SpotTool;

import java.util.List;
import java.util.Map;

/**
 * 景点业务层
 */
public interface SpotsService {



    public Spots getConditionSpot();

    public  int   getCounts();
    /**
     * 查找所有的景点信息
     * @return
     */
    List<Spots> findAll();

    public List<Spots> spotsList();

    //为饼图提供数据
    public List<SpotTool> spotToolList();

    //获取点击量
    public List<Flow> findAllFlow();



    /**
     * 根据id查找对应的景点所有信息
     *
     * @param spotsId 景点Id
     * @return 景点所有信息
     */
    Spots findSpotsById(String spotsId);

    /**
     * 保存景点
     * @param spots
     */
    void saveSpots(Spots spots);

    /**
     * 修改景点信息
     * @param spots
     */
    void updateSpots(Spots spots);

    /**
     * 修改状态
     * @param spotsIds 景点Id
     * @param state
     */
    void updateState(String[] spotsIds, Integer state);

    /**
     * 删除景点
     * @param spotsIds
     */
    void deleteSpots(String[] spotsIds);

    /**
     * 分页查询
     * @param count
     * @return
     */
    List<Spots> findByPage(Integer count);

    /**
     * 根据条件动态搜索
     * @param condition
     * @return
     */
    Map findAllWithCondition(String condition);
}
