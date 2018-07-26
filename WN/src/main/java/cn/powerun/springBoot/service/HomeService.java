package cn.powerun.springBoot.service;

import cn.powerun.springBoot.pojo.spot.Spots;
import cn.powerun.springBoot.tools.SpotTool;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface HomeService {
    //查询排名前三的景点
    public List<Spots> findTop3();
    //查询全部景点(名称)
    public List<Spots> findAll(Integer n);
    //查询6个景点信息
    public List<Spots> findAll6(Integer n);
}
