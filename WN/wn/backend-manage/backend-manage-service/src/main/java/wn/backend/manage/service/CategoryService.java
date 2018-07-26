package wn.backend.manage.service;



import java.util.List;

import wn.backend.manage.pojo.Category;

/**
 * 类别
 */
public interface CategoryService {

    /**
     * 查找所有
     * @return
     */
    List<Category> findAll();

    /**
     * 根据id查类别
     * @param categoryId
     */
    Category findCategoryById(String categoryId);

    /**
     * 修改状态
     * @param categoryId
     * @param state
     */
    void updateState(String[] categoryIds, Integer state);

    /**
     * 保存类别信息
     * @param category
     */
    void saveCategory(Category category);

    /**
     * 更新类别
     * @param category
     */
    void updateCategory(Category category);

    void deleteCategory(String categoryId);

    /**
     * 根据景点id查找对应的类别信息
     * @param spotsId
     * @return
     */
    List<Category> findCategoryBySpotsId(String spotsId);
}
