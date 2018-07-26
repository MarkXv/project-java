package cn.powerun.springBoot.mapper;

import cn.powerun.springBoot.pojo.spot.Spots;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface HomeMapper {
    public List<Spots> findTop3();
    public List<Spots> findAll(Integer n);
    public List<Spots> findAll6(Integer n);
}
