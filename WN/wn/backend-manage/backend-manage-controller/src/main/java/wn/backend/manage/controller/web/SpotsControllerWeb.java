package wn.backend.manage.controller.web;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.common.spring.exetend.jackson.CallbackMappingJackson2HttpMessageConverter;
import com.wn.common.vo.SysResult;

import wn.backend.manage.pojo.Category;
import wn.backend.manage.pojo.Spots;
import wn.backend.manage.service.CategoryService;
import wn.backend.manage.service.SpotsService;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
@RequestMapping("/spots")
public class SpotsControllerWeb {

	@Autowired
	private SpotsService spotsService;
	@Autowired
	private CategoryService categoryService;

	private static final ObjectMapper objectMapper = new ObjectMapper();
	private static final Logger logger = Logger.getLogger(SpotsControllerWeb.class);

	/**
	 * 请求景点-类别页面 请求前三景点
	 *
	 * @return
	 */
	@RequestMapping("/findTop3")
	@ResponseBody
	public SysResult findTop3() {
		List<Spots> spotList = spotsService.finaTop3();
		try {
			String spotJSON = objectMapper.writeValueAsString(spotList);
			if (spotList != null) {
				return SysResult.oK(spotJSON);
			}
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SysResult.build(201, "获取前三名景点失败");
	}

	/**
	 * 请求所有景点名称
	 * 
	 * @return
	 */
	@RequestMapping("/queryAll")
	@ResponseBody
	public SysResult findAll() {

		List<Spots> spotsList = spotsService.findAll();

		try {
			String spotJSON = objectMapper.writeValueAsString(spotsList);
			if (spotsList != null) {
				return SysResult.oK(spotJSON);
			}
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SysResult.build(201, "获取所有景点失败");
	}

	/**
	 * 请求所有景点前六
	 * 
	 * @param n
	 * @return
	 */
	@RequestMapping("/findTop6")
	@ResponseBody
	public SysResult findAll6() {
		List<Spots> spotsList = spotsService.findAll6(6);
		try {
			String spotJSON = objectMapper.writeValueAsString(spotsList);
			if (spotsList != null) {
				return SysResult.oK(spotJSON);
			}
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SysResult.build(201, "获取前6名景点失败");
	}

	/**
	 * 查询具体景点
	 * 
	 * @param spotsId
	 * @return
	 */
	@RequestMapping("/query/{spotsId}")
	@ResponseBody
	public SysResult findSpotsById(@PathVariable String spotsId) {
		Spots spot = spotsService.findSpotsById(spotsId);
		try {
			if (spot != null) {
				String spotJSON;
				spotJSON = objectMapper.writeValueAsString(spot);
				// MappingJacksonValue result = new
				// MappingJacksonValue(SysResult.oK(spotJSON));
				// result.setJsonpFunction(callback);
				return SysResult.oK(spotJSON);
			}
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return SysResult.build(201, "获取景点失败");
	}

	@RequestMapping("/query/pages/{count}")
	@ResponseBody
	public SysResult fidnByPages(@PathVariable Integer count) {
		List<Spots> spotsList = spotsService.findByPage(count);
		try {
			if (spotsList != null) {
				return SysResult.oK(objectMapper.writeValueAsString(spotsList));
			}
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return SysResult.build(201, "跨域请求根据页数查询景点失败");
	}
}
