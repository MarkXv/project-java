package com.wn.web.service;

import java.util.List;

import com.wn.web.pojo.Spots;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface HomeService {
	// 查询排名前三的景点
	public List<Spots> findTop3();

	// 查询全部景点(名称)
	public List<Spots> findAll(Integer n);

	// 查询6个景点信息
	public List<Spots> findAll6(Integer n);
}
