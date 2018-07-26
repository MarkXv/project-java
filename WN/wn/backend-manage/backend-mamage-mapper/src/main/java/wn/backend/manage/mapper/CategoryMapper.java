package wn.backend.manage.mapper;


import org.apache.ibatis.annotations.Param;

import wn.backend.manage.pojo.Category;

import java.util.List;

/**
 * 图片Mapper
 */
public interface CategoryMapper {
    /**
     * 查找所有的类别信息
     * @return
     */
    List<Category> findAll();

    /**
     * 保存类别
     *
     * @param category
     */
    void saveCategory(Category category);

    /**
     * 类别的修改
     *
     * @param category
     */
    void updateCategory(Category category);

    /**
     * 保存景点类别信息表
     * @param spotsId
     * @param categoryId
     */
    void saveSpotsCategory(@Param("spotsId") String spotsId, @Param("categoryId") String categoryId);

    /**
     * 更新景点类别信息表
     * @param spotsId
     * @param categoryId
     */
    void updateSpotsCategory(@Param("spotsId") String spotsId, @Param("categoryId") String categoryId);

    /**
     * 删除类别表
     * @param categoryId
     */
    void deleteCategory(String categoryId);

    /**
     * 删除景点类别信息
     * @param spotsId
     */
    void deleteSpotsCategory(String spotsId);

    /**
     * 根据id查找
     * @param categoryId
     */
    Category findCategoryById(String categoryId);

    /**
     * 修改状态
     * @param categoryId
     * @param state
     */
    void updateState(@Param("categoryId") String categoryId, @Param("state") Integer state);

    /**
     * 删除类别景点信息表
     * @param categoryId
     */
    void deleteCategorySpots(String categoryId);

    /**
     * 根据景点id查找对应的类别信息
     * @param spotsId
     * @return
     */
    List<Category> findCategoryBySpotsId(String spotsId);
}
