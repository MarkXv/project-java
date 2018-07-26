package cn.powerun.springBoot.service;

import cn.powerun.springBoot.mapper.HomeMapper;
import cn.powerun.springBoot.pojo.spot.Spots;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class HomeServiceImp implements HomeService {
    @Autowired
    private HomeMapper homeMapper;

    public List<Spots> findTop3() {
        return homeMapper.findTop3();
    }


    public List<Spots> findAll(Integer n) {
        return homeMapper.findAll(n);
    }


    public List<Spots> findAll6(Integer n) {
        return homeMapper.findAll6(n);
    }
}
