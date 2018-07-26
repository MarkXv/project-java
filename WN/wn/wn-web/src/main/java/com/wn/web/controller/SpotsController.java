package com.wn.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wn.common.vo.SysResult;
import com.wn.web.pojo.Category;
import com.wn.web.pojo.Spots;
import com.wn.web.service.SpotsService;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
@RequestMapping("/backend/spots")
public class SpotsController {

    @Autowired
    private SpotsService spotsService;


    
   
}
