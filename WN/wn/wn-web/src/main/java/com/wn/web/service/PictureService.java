package com.wn.web.service;

import java.util.List;

import com.wn.web.pojo.Picture;

/**
 * Created by Administrator on 2017/10/21.
 */
public interface PictureService {
	List<Picture> findPicturesById(String spotsId);

	/**
	 * 根据景点id查看该景点对应的前三张图片
	 * 
	 * @param spotsId
	 * @return
	 */
	List<Picture> findTop3(String spotsId);
}
