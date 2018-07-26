package cn.powerun.springBoot.mapper;

import cn.powerun.springBoot.pojo.spot.Picture;

import java.util.List;

/**
 * 图片Mapper
 */
public interface PictureMapper {
    /**
     * 保存图片
     * @param p
     */
    void savePicture(Picture p);

    /**
     * 图片的修改
     * @param p
     */
    void updatePicture(Picture p);

    /**
     * 删除
     * @param pictureId
     */
    void deletePicture(String pictureId);

    //查询景区前3的图片
    List<Picture> findTop3(String spotsId);

    List<Picture> findPicturesById(String spotsId);
}
