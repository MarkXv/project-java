package com.wn.web.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.wn.common.SpotTool;
import com.wn.web.pojo.Flow;
import com.wn.web.pojo.Spots;

/**
 * 景点业务层
 */
public interface SpotsService {
	/**
	 * 查找所有的景点信息
	 * 
	 * @return
	 */
	List<Spots> findAll();

	public List<Spots> spotsList();

	// 为饼图提供数据
	public List<SpotTool> spotToolList();

	// 获取点击量
	public List<Flow> findAllFlow();

	/**
	 * 根据id查找对应的景点所有信息
	 *
	 * @param spotsId
	 *            景点Id
	 * @return 景点所有信息
	 */
	Spots findSpotsById(String spotsId);

	/**
	 * 保存景点
	 * 
	 * @param spots
	 */
	void saveSpots(MultipartFile file, Spots spots, HttpServletRequest request) throws IOException;

	/**
	 * 修改景点信息
	 * 
	 * @param spots
	 */
	void updateSpots(MultipartFile file, Spots spots, HttpServletRequest request) throws IOException;

	/**
	 * 修改状态
	 * 
	 * @param spotsIds
	 *            景点Id
	 * @param state
	 */
	void updateState(String[] spotsIds, Integer state);

	/**
	 * 删除景点
	 * 
	 * @param spotsIds
	 */
	void deleteSpots(String[] spotsIds);

	/**
	 * 分页查询
	 * 
	 * @param count
	 * @return
	 */
	List<Spots> findByPage(Integer count);

	/**
	 * 浏览量统计
	 */
	public void updataClickValue(String spotsId, Integer clickValue);

	/**
	 * 根据条件动态搜索
	 * 
	 * @param condition
	 * @return
	 */
	public Map findAllWithCondition(String condition);

	
}
