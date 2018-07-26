package com.wn.web.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.common.service.HttpClientService;
import com.wn.web.pojo.Spots;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HttpClientService clientService;

	private static final ObjectMapper objectMapper = new ObjectMapper();

	private static final Logger logger = Logger.getLogger(HomeServiceImpl.class);

	@Override
	public List<Spots> findTop3() {
		List<Spots> spotsList = new ArrayList<Spots>();
		// 定义url
		String url = "http://manage.wn.com/spots/findTop3";

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);

			// 获取data
			String spotsListJSON = objectMapper.readTree(top3SysResutlJSON).get("data").asText();

			Spots[] spots = objectMapper.readValue(spotsListJSON, Spots[].class);

			for (Spots spot : spots) {
				spotsList.add(spot);
			}
			return spotsList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}

		return null;
	}

	@Override
	public List<Spots> findAll(Integer n) {
		List<Spots> spotsList = new ArrayList<Spots>();
		// 定义url
		String url = "http://manage.wn.com/spots/queryAll";

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);

			// 获取data
			String spotsListJSON = objectMapper.readTree(top3SysResutlJSON).get("data").asText();

			Spots[] spots = objectMapper.readValue(spotsListJSON, Spots[].class);

			for (Spots spot : spots) {
				spotsList.add(spot);
			}
			return spotsList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}

		return null;
	}

	@Override
	public List<Spots> findAll6(Integer n) {
		List<Spots> spotsList = new ArrayList<Spots>();
		// 定义url
		String url = "http://manage.wn.com/spots/findTop6";

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);

			// 获取data
			String spotsListJSON = objectMapper.readTree(top3SysResutlJSON).get("data").asText();

			Spots[] spots = objectMapper.readValue(spotsListJSON, Spots[].class);

			for (Spots spot : spots) {
				spotsList.add(spot);
			}
			return spotsList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}

		return null;
	}

}
