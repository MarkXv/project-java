package cn.powerun.springBoot.service;

import cn.powerun.springBoot.mapper.PictureMapper;
import cn.powerun.springBoot.pojo.spot.Picture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/21.
 */
@Service
public class PictureServiceImpl implements PictureService{
    @Autowired
    private PictureMapper pictureMapper;
    public List<Picture> findPicturesById(String spotsId) {
        return pictureMapper.findPicturesById(spotsId);
    }

    @Override
    public List<Picture> findTop3(String spotsId) {
        return pictureMapper.findTop3(spotsId);
    }
}
