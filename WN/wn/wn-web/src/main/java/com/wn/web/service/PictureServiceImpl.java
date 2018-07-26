package com.wn.web.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.common.service.HttpClientService;
import com.wn.web.pojo.Picture;
import com.wn.web.pojo.Spots;

/**
 * Created by Administrator on 2017/10/21.
 */
@Service
public class PictureServiceImpl implements PictureService {

	@Autowired
	private HttpClientService clientService;

	private static final Logger logger = Logger.getLogger(SpotsServiceImpl.class);

	private static final ObjectMapper objectMapper = new ObjectMapper();

	@Override
	public List<Picture> findPicturesById(String spotsId) {
		List<Picture> imgList = new ArrayList<Picture>();
		// 定义url
		String url = "http://manage.wn.com/backend/spots/findPicturesById/" + spotsId;

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);

			// 获取data
			String imgsListJSON = objectMapper.readTree(top3SysResutlJSON).get("data").asText();

			Picture[] pictures = objectMapper.readValue(imgsListJSON, Picture[].class);
			for (Picture img : pictures) {
				imgList.add(img);
			}
			return imgList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return null;
	}

	@Override
	public List<Picture> findTop3(String spotsId) {
		List<Picture> imgList = new ArrayList<Picture>();
		// 定义url
		String url = "http://manage.wn.com/backend/spots/findTop3/" + spotsId;

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);

			// 获取data
			String imgsListJSON = objectMapper.readTree(top3SysResutlJSON).get("data").asText();

			Picture[] pictures = objectMapper.readValue(imgsListJSON, Picture[].class);
			for (Picture img : pictures) {
				imgList.add(img);
			}
			return imgList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return null;
	}

}
