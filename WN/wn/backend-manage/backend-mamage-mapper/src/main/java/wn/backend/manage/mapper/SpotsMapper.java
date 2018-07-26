package wn.backend.manage.mapper;



import org.apache.ibatis.annotations.Param;

import wn.backend.manage.pojo.Flow;
import wn.backend.manage.pojo.Spots;
import wn_backend.backend_common.SpotTool;

import java.util.List;

/**
 * 景点Mapper
 */
public interface SpotsMapper {

    /**
     * 查询素有景点信息
     * @return
     */
    public List<Spots> findAll();

    /**
     * 根据id查询景点全部信息
     * @param spotsId
     * @return
     */
    public Spots findSpotsById(String spotsId);

    /**
     * 保存景点信息
     * @param spots
     */
    void saveSpots(Spots spots);

    /**
     * 修改景点信息
     */
    void updateSpots(Spots spots);

    /**
     * 修改状态
     * @param spotsId
     * @param state
     */
    void updateState(@Param("spotsId") String spotsId, @Param("state") Integer state);

    /**
     * 保存景点图片关联表
     * @param spotsId
     * @param pictureId
     */
    void saveSpotsPicture(@Param("spotsId") String spotsId, @Param("pictureId") String pictureId);

    /**
     * 修改景点图片关联表
     * @param spotsId
     * @param pictureId
     */
    void updateSpotsPicture(@Param("spotsId") String spotsId, @Param("pictureId") String pictureId);

    /**
     * 删除景点信息表
     * @param spotsId
     */
    void deleteSpots(String spotsId);

    /**
     * 删除景点图片关联信息
     * @param spotsId
     */
    void deleteSpotsPicture(String spotsId);

    /**
     * 保存景点流量表
     */
    void saveFlow(Flow flow);

    /**
     * 删除流量信息
     * @param spotsId
     */
    void deleteFlow(String spotsId);

    /**
     * 查找前三
     * @return
     */
    List<Spots> findTop3();

    /**
     * 查找景点id和景点名称等一些简单数据进行分页（每页16条）
     * @param n
     * @return
     */
    List<Spots> findSimpAll(Integer n);

    /**
     *对所有数据进行分页（每页6条）查询
     * @param n
     * @return
     */
    List<Spots> findAll6(Integer n);

    public List<Spots> spotsList();

    public List<SpotTool> spotToolList();

    /**
     * 分页查询
     * @param count
     * @return
     */
    List<Spots> findByPage(Integer count);

    public void updataClickValue(@Param("spotsId") String spotsId,@Param("clickValue") Integer clickValue);

    /**
     * 根据条件动态查询
     * @param tar 根据条件和策略，封装成的对象
     * @return
     */
    List<Spots> findAllWithCondition(Spots tar);
}
