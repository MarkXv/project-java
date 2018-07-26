package wn.backend.manage.controller.backend;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import wn.backend.manage.pojo.Spots;
import wn.backend.manage.service.SpotsService;
import wn_backend.backend_common.SpotTool;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
@Controller
@RequestMapping("/backend/chart")
public class ChartController {
    @Autowired
    private SpotsService spotsService;

    @RequestMapping("/index")
    public  String tochart(Model model) throws JsonProcessingException {
        /**
         * 景点点击量的统计图数据
         */
        List<Spots> spotsList =  spotsService.spotsList();
        /*System.out.println("spotsList:"+spotsList);*/

        List<SpotTool> tool = new ArrayList<SpotTool>();
        for (Spots spot : spotsList) {
            tool.add(new SpotTool(spot.getSpotsName(),String.valueOf(spot.getClickValume())));
        }
        ObjectMapper object = new ObjectMapper();
        String data = object.writeValueAsString(tool);
        //System.out.println(data);
        model.addAttribute("data",data);

        /**
         * 饼图的数据
         */

        List<SpotTool> spotsList1 =  spotsService.spotToolList();
        List<Map> mapList = new ArrayList<Map>();
        for(int i = 0 ; i<spotsList1.size();i++ ){
            Map<String,String> map = new HashMap<String, String>();
            map.put("value",spotsList1.get(i).getSumSpots().toString());
            map.put("name",spotsList1.get(i).getCategoryName());
            mapList.add(map);
        }
        String data1 =  object.writeValueAsString(mapList);
        System.out.println(data1);
        model.addAttribute("data1",data1);
        return "pages/backend/main/manage/chart/index";
    }
}
