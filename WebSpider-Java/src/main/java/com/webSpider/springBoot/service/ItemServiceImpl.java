package com.webSpider.springBoot.service;

import com.webSpider.springBoot.mapper.ItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.ServiceMode;

/**
 * Created by xujm on 2018/3/27.
 */
@Service("itemService")
public class ItemServiceImpl implements ItemService{

    @Autowired
    private ItemMapper itemMapper;


}