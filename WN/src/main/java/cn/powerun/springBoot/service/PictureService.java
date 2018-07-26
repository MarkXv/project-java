package cn.powerun.springBoot.service;

import cn.powerun.springBoot.pojo.spot.Picture;

import java.util.List;

/**
 * Created by Administrator on 2017/10/21.
 */
public interface PictureService {
    List<Picture> findPicturesById(String spotsId);

    /**
     * 根据景点id查看该景点对应的前三张图片
     * @param spotsId
     * @return
     */
    List<Picture> findTop3(String spotsId);
}
