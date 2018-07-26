package com.wn.web.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.common.SpotTool;
import com.wn.common.service.HttpClientService;
import com.wn.web.pojo.Flow;
import com.wn.web.pojo.Spots;

/**
 * 景点业务层实现类
 */
@Service
public class SpotsServiceImpl implements SpotsService {

	@Autowired
	private HttpClientService clientService;

	private static final Logger logger = Logger.getLogger(SpotsServiceImpl.class);

	private static final ObjectMapper objectMapper = new ObjectMapper();

	@Override
	public List<Spots> findAll() {
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
	public List<Spots> spotsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SpotTool> spotToolList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Flow> findAllFlow() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Spots findSpotsById(String spotsId) {
		// 定义url
		String url = "http://manage.wn.com/spots/query/" + spotsId;

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);

			// 获取data
			String spotsListJSON = objectMapper.readTree(top3SysResutlJSON).get("data").asText();

			Spots spots = objectMapper.readValue(spotsListJSON, Spots.class);

			return spots;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return null;
	}

	@Override
	public void saveSpots(MultipartFile file, Spots spots, HttpServletRequest request) throws IOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateSpots(MultipartFile file, Spots spots, HttpServletRequest request) throws IOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateState(String[] spotsIds, Integer state) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteSpots(String[] spotsIds) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Spots> findByPage(Integer count) {
		List<Spots> spotsList = new ArrayList<Spots>();
		// 定义url
		String url = "http://manage.wn.com/spots/query/pages/" + count;

		try {
			// 发送跨域请求
			String SysResutlJSON = clientService.doGet(url);

			// 获取data
			String spotsListJSON = objectMapper.readTree(SysResutlJSON).get("data").asText();

			Spots[] spotses = objectMapper.readValue(spotsListJSON, Spots[].class);
			for (Spots spots : spotses) {
				spotsList.add(spots);
			}
			return spotsList;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return null;
	}

	@Override
	public void updataClickValue(String spotsId, Integer clickValue) {
		// 定义url
		String url = "http://manage.wn.com/backend/spots/updataClickValue/" + spotsId;

		try {
			// 发送跨域请求
			String top3SysResutlJSON = clientService.doGet(url);
			// //获取data
			// String spotsListJSON =
			// objectMapper.readTree(top3SysResutlJSON).get("data").asText();
			//
			// Spots spots = objectMapper.readValue(spotsListJSON, Spots.class);

		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

	@Override
	public Map findAllWithCondition(String condition) {
		// TODO Auto-generated method stub
		return null;
	}

}
