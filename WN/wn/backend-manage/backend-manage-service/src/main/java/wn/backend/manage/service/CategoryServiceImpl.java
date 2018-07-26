package wn.backend.manage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wn.backend.manage.mapper.CategoryMapper;
import wn.backend.manage.pojo.Category;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/20.
 */
@Service
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    private CategoryMapper categoryMapper;

    public List<Category> findAll() {
        return categoryMapper.findAll();
    }

    public Category findCategoryById(String categoryId) {
        return categoryMapper.findCategoryById(categoryId);
    }

    public void updateState(String[] categoryIds, Integer state) {
        for (String categoryId:categoryIds
             ) {
            categoryMapper.updateState(categoryId, state);
        }
    }

    public void saveCategory(Category category) {

        category.setCategoryId(UUID.randomUUID().toString());

        category.setCreateTime(new Date());
        category.setUpdateTime(category.getCreateTime());

        categoryMapper.saveCategory(category);
    }

    public void updateCategory(Category category) {

        categoryMapper.updateCategory(category);
    }

    public void deleteCategory(String categoryId) {
        categoryMapper.deleteCategorySpots(categoryId);
        categoryMapper.deleteCategory(categoryId);
    }

    public List<Category> findCategoryBySpotsId(String spotsId) {
        return categoryMapper.findCategoryBySpotsId(spotsId);
    }
}
