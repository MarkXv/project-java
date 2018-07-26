package cn.powerun.springBoot.mapper;

import cn.powerun.springBoot.pojo.spot.Flow;

import java.util.List;

/**
 * Created by Administrator on 2017/10/22.
 */
public interface FlowMapper {

    List<Flow> findAllFlow();
}
