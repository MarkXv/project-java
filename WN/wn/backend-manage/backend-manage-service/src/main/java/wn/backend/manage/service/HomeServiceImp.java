package wn.backend.manage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wn.backend.manage.mapper.HomeMapper;
import wn.backend.manage.pojo.Spots;

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
