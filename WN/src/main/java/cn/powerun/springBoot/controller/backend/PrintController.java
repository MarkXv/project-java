package cn.powerun.springBoot.controller.backend;

import cn.powerun.springBoot.pojo.spot.Flow;
import cn.powerun.springBoot.pojo.spot.Spots;
import cn.powerun.springBoot.pojo.user.Module;
import cn.powerun.springBoot.pojo.user.Role;
import cn.powerun.springBoot.pojo.user.User;
import cn.powerun.springBoot.service.ModuleService;
import cn.powerun.springBoot.service.RoleService;
import cn.powerun.springBoot.service.SpotsService;
import cn.powerun.springBoot.service.UserService;
import cn.powerun.springBoot.tools.DownloadUtils;
import cn.powerun.springBoot.tools.POIUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/10/21.
 */
@Controller
@RequestMapping("/backend/printtable/print")
public class PrintController {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private ModuleService moduleService;
    @Autowired
    private SpotsService spotsService;

    @RequestMapping("/index")
    public String index(Model model){
        List<Module> moduleList = moduleService.findAllModule();
        model.addAttribute("moduleList",moduleList);

        List<User> userList = userService.findAllList();
        model.addAttribute("userList",userList);

        List<Spots> spotsList = spotsService.findAll();
        model.addAttribute("spotsList",spotsList);

        List<Role> roleList = roleService.findAllRole();
        model.addAttribute("roleList",roleList);


        return "pages/backend/main/manage/printtable/print";
    }

    /*打印用户列表*/
    @RequestMapping("/user")
    public String print(HttpServletResponse response) throws IOException {
        List<User> dataList = userService.findAllList();
        // 设置查询条件
        // 查询数据总量
        /*System.out.println(dataList);*/
        int total = dataList.size();
        // 每页展示数据数量
        int number = 20;
        // 数据页数
        int page = total % number > 0 ? total / number + 1 : total / number;
//        int page = Math.;

        Workbook wb = new HSSFWorkbook();
        for (int m = 0; m < page; m++) {
            int count = m * number;
            List<User> list = new ArrayList<User>();
            if((m+1)==page){
                list.addAll(dataList.subList(count, count+(total%number)));
            }else{
                list.addAll(dataList.subList(count, count+number));
            }
            Sheet sheet = wb.createSheet("第" + (m+1) + "页");
            Row nRow = null;
            Cell nCell = null;
            // 行号
            int rowNo = 0;
            // 列号
            int colNo = 1;
            // 声明样式对象和字体对象
            CellStyle nStyle = wb.createCellStyle();
            Font font = wb.createFont();
            String tableName = "用户表详细信息报表";
            String[] headerStr = {"用户名称", "性别", "生日", "联系方式", "邮箱", "创建人", "创建时间", "更新人", "更新时间"};
            // 列宽
            sheet.setColumnWidth(0, 2 * 300);
            sheet.setColumnWidth(1, 26 * 300);
            sheet.setColumnWidth(2, 12 * 300);
            sheet.setColumnWidth(3, 29 * 300);
            sheet.setColumnWidth(4, 10 * 300);
            sheet.setColumnWidth(5, 12 * 300);
            sheet.setColumnWidth(6, 8 * 300);
            sheet.setColumnWidth(7, 10 * 300);
            sheet.setColumnWidth(8, 10 * 300);
            sheet.setColumnWidth(9, 9 * 300);

            // 大标题，合并单元格
            sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 9)); // 开始行，结束行，开始列，结束列
            // 合并单元格的内容写在合并前第一个单元格中
            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(36);

            nCell = nRow.createCell(1);
            nCell.setCellValue(tableName);
            nCell.setCellStyle(POIUtils.bigTitle(wb, nStyle, font));

            String[] title = headerStr;

            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(26.25f);

            // 初始化
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            for (int i = 0; i < title.length; i++) {
                nCell = nRow.createCell(i + 1);
                nCell.setCellValue(title[i]);
                nCell.setCellStyle(POIUtils.Title(wb, nStyle, font));

            }

            nStyle = wb.createCellStyle();
            font = wb.createFont();

            // 换行
            for (int j = 0; j < list.size(); j++) {
                User user = list.get(j);
                // 打桩 查看集合对象是否为null
                // for (Dept d : list) {
                // System.out.println(d);
                // }
                colNo = 1;

                nRow = sheet.createRow(rowNo++);
                //1
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(user.getUsername());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //2
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(user.getUserInfo().getGender());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //3
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(user.getUserInfo().getBirthday());
                if(user.getUserInfo().getBirthday()==null||"".equals(user.getUserInfo().getBirthday())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getBirthday());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //4
                nCell = nRow.createCell(colNo++);
                if(user.getUserInfo().getTelephone()==null||"".equals(user.getUserInfo().getTelephone())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getTelephone());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //5
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(user.getUserInfo().getEmail());
                if(user.getUserInfo().getEmail()==null||"".equals(user.getUserInfo().getEmail())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getEmail());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //6
                nCell = nRow.createCell(colNo++);
                if(user.getUserInfo().getCreateBy()==null||"".equals(user.getUserInfo().getCreateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getCreateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //7
                nCell = nRow.createCell(colNo++);
                if(user.getUserInfo().getCreateTime()==null||"".equals(user.getUserInfo().getCreateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getCreateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //8
                nCell = nRow.createCell(colNo++);
                if(user.getUserInfo().getUpdateBy()==null||"".equals(user.getUserInfo().getUpdateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getUpdateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //9
                nCell = nRow.createCell(colNo++);
                if(user.getUserInfo().getUpdateTime()==null||"".equals(user.getUserInfo().getUpdateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(user.getUserInfo().getUpdateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));


            }
        }

        // 初始化

        // 下载
        DownloadUtils dUtil = new DownloadUtils();
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        wb.write(os);
        dUtil.download(os, response, "部门列表展示表.xls");
        os.close();

        return "pages/backend/main/manage/userprintlist";
    }
    /*打印角色信息*/
    @RequestMapping("/role")
    public String printRole(HttpServletResponse response) throws IOException {
        List<Role> dataList = roleService.findAllRole();
        // 设置查询条件
        // 查询数据总量
        /*System.out.println(dataList);*/
        int total = dataList.size();
        // 每页展示数据数量
        int number = 10;
        // 数据页数
        int page = total % number > 0 ? total / number + 1 : total / number;

        Workbook wb = new HSSFWorkbook();
        for (int m = 0; m < page; m++) {
            int count = m * number;
            /*System.out.println(dataList);*/
            List<Role> list = new ArrayList<Role>();
            if((m+1)==page){
                list.addAll(dataList.subList(count, count+(total%number)));
            }else{
                list.addAll(dataList.subList(count, count+number));
            }


            Sheet sheet = wb.createSheet("第" + (m+1) + "页");
            Row nRow = null;
            Cell nCell = null;
            // 行号
            int rowNo = 0;
            // 列号
            int colNo = 1;
            // 声明样式对象和字体对象
            CellStyle nStyle = wb.createCellStyle();
            Font font = wb.createFont();
            String tableName = "角色详细信息报表";
            String[] headerStr = {"角色等级", "排序号", "说明", "创建人", "创建时间", "更新人", "更新时间"};
            // 列宽
            sheet.setColumnWidth(0, 2 * 300);
            sheet.setColumnWidth(1, 26 * 300);
            sheet.setColumnWidth(2, 12 * 300);
            sheet.setColumnWidth(3, 29 * 300);
            sheet.setColumnWidth(4, 10 * 300);
            sheet.setColumnWidth(5, 12 * 300);
            sheet.setColumnWidth(6, 8 * 300);
            sheet.setColumnWidth(7, 10 * 300);
            sheet.setColumnWidth(8, 10 * 300);
            sheet.setColumnWidth(9, 9 * 300);

            // 大标题，合并单元格
            sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 9)); // 开始行，结束行，开始列，结束列
            // 合并单元格的内容写在合并前第一个单元格中
            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(36);

            nCell = nRow.createCell(1);
            nCell.setCellValue(tableName);
            nCell.setCellStyle(POIUtils.bigTitle(wb, nStyle, font));

            String[] title = headerStr;

            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(26.25f);

            // 初始化
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            for (int i = 0; i < title.length; i++) {
                nCell = nRow.createCell(i + 1);
                nCell.setCellValue(title[i]);
                nCell.setCellStyle(POIUtils.Title(wb, nStyle, font));

            }
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            // 换行
            for (int j = 0; j < list.size(); j++) {
                Role role = list.get(j);
                colNo = 1;
                nRow = sheet.createRow(rowNo++);
                //1
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(role.getName());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //2
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(role.getOrderNo());
                if(role.getOrderNo()==null||"".equals(role.getOrderNo())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(role.getOrderNo());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //3
                nCell = nRow.createCell(colNo++);
                if(role.getRemark()==null||"".equals(role.getRemark())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(role.getRemark());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));


                nCell = nRow.createCell(colNo++);
                if(role.getCreateBy()==null||"".equals(role.getCreateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(role.getCreateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //7
                nCell = nRow.createCell(colNo++);
                if(role.getCreateTime()==null||"".equals(role.getCreateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(role.getCreateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //8
                nCell = nRow.createCell(colNo++);
                if(role.getUpdateBy()==null||"".equals(role.getUpdateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(role.getUpdateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //9
                nCell = nRow.createCell(colNo++);
                if(role.getUpdateTime()==null||"".equals(role.getUpdateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(role.getUpdateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

            }
        }

        // 初始化

        // 下载
        DownloadUtils dUtil = new DownloadUtils();
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        wb.write(os);
        dUtil.download(os, response,  "列表展示表.xls");
        os.close();
        return "pages/backend/main/manage/printtable/roleprintlist";

    }
    /*打印模块信息*/
    @RequestMapping("/module")
    public String printModule(HttpServletResponse response) throws IOException {
        List<Module> dataList = moduleService.findAllModule();
        // 设置查询条件
        // 查询数据总量
        /*System.out.println(dataList);*/
        int total = dataList.size();
        // 每页展示数据数量
        int number = 5;
        // 数据页数
        int page = total % number > 0 ? total / number + 1 : total / number;
        /*System.out.println(dataList);*/
        Workbook wb = new HSSFWorkbook();
        for (int m = 0; m < page; m++) {
            int count = m * number;
            List<Module> list = new ArrayList<Module>();
            if((m+1)==page){
                list.addAll(dataList.subList(count, count+(total%page)));
            }else{
                list.addAll(dataList.subList(count, count+number));
            }

            Sheet sheet = wb.createSheet("第" + (m+1) + "页");
            Row nRow = null;
            Cell nCell = null;
            // 行号
            int rowNo = 0;
            // 列号
            int colNo = 1;
            // 声明样式对象和字体对象
            CellStyle nStyle = wb.createCellStyle();
            Font font = wb.createFont();
            String tableName = "模块详细信息报表";
            String[] headerStr = {"菜单名称", "父模块","类型", "说明", "状态","创建人", "创建时间", "更新人", "更新时间"};
            // 列宽
            sheet.setColumnWidth(0, 2 * 300);
            sheet.setColumnWidth(1, 26 * 300);
            sheet.setColumnWidth(2, 12 * 300);
            sheet.setColumnWidth(3, 29 * 300);
            sheet.setColumnWidth(4, 10 * 300);
            sheet.setColumnWidth(5, 12 * 300);
            sheet.setColumnWidth(6, 8 * 300);
            sheet.setColumnWidth(7, 10 * 300);
            sheet.setColumnWidth(8, 10 * 300);
            sheet.setColumnWidth(9, 9 * 300);

            // 大标题，合并单元格
            sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 9)); // 开始行，结束行，开始列，结束列
            // 合并单元格的内容写在合并前第一个单元格中
            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(36);

            nCell = nRow.createCell(1);
            nCell.setCellValue(tableName);
            nCell.setCellStyle(POIUtils.bigTitle(wb, nStyle, font));

            String[] title = headerStr;

            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(26.25f);

            // 初始化
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            for (int i = 0; i < title.length; i++) {
                nCell = nRow.createCell(i + 1);
                nCell.setCellValue(title[i]);
                nCell.setCellStyle(POIUtils.Title(wb, nStyle, font));

            }
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            // 换行
            for (int j = 0; j < list.size(); j++) {
                Module module = list.get(j);
                // 打桩 查看集合对象是否为null
                // for (Dept d : list) {
                // System.out.println(d);
                // }
                colNo = 1;
                nRow = sheet.createRow(rowNo++);
                //1
                nCell = nRow.createCell(colNo++);
                if(module.getName()==null||"".equals(module.getName())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getName());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //2
                nCell = nRow.createCell(colNo++);
                if(module.getParentModule()==null||module.getParentModule().getName()==null||"".equals(module.getParentModule().getName())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getParentModule().getName());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //3
                nCell = nRow.createCell(colNo++);
                if(module.getCtype()==null||"".equals(module.getCtype())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getCtype());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                if(module.getRemark()==null||"".equals(module.getRemark())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getState());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                if(module.getState()==null||"".equals(module.getState())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getState());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                if(module.getCreateBy()==null||"".equals(module.getCreateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getCreateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //7
                nCell = nRow.createCell(colNo++);
                if(module.getCreateTime()==null||"".equals(module.getCreateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getCreateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //8
                nCell = nRow.createCell(colNo++);
                if(module.getUpdateBy()==null||"".equals(module.getUpdateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getUpdateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //9
                nCell = nRow.createCell(colNo++);
                if(module.getUpdateTime()==null||"".equals(module.getUpdateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(module.getUpdateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

            }
        }
        // 下载
        DownloadUtils dUtil = new DownloadUtils();
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        wb.write(os);
        dUtil.download(os, response, "模块列表展示表.xls");
        os.close();
        return "pages/backend/main/manage/printtable/moduleprintlist";

    }
    /*打印景点信息*/
    @RequestMapping("/spots")
    public String printSpots(HttpServletResponse response) throws IOException {
        /*System.out.println("景点报表打印");*/
        List<Spots> dataList = spotsService.findAll();
        // 设置查询条件
        // 查询数据总量
        /*System.out.println(dataList);*/
        int total = dataList.size();
        // 每页展示数据数量
        int number = 50;
        // 数据页数
        int page = total % number > 0 ? total / number + 1 : total / number;

        Workbook wb = new HSSFWorkbook();
        for (int m = 0; m < page; m++) {
            int count = m * number;
            List<Spots> list = new ArrayList<Spots>();
            if((m+1)==page){
                list.addAll(dataList.subList(count, count+(total%page)));
            }else{
                list.addAll(dataList.subList(count, count+number));
            }
            Sheet sheet = wb.createSheet("第" + (m+1) + "页");
            Row nRow = null;
            Cell nCell = null;
            // 行号
            int rowNo = 0;
            // 列号
            int colNo = 1;
            // 声明样式对象和字体对象
            CellStyle nStyle = wb.createCellStyle();
            Font font = wb.createFont();
            String tableName = "景点信息报表";

            String[] headerStr = {"景点名称", "开放时间","门票价格", "联系方式", "网址","状态","创建人", "创建时间", "更新人", "更新时间"};
            // 列宽
            sheet.setColumnWidth(0, 2 * 300);
            sheet.setColumnWidth(1, 26 * 300);
            sheet.setColumnWidth(2, 12 * 300);
            sheet.setColumnWidth(3, 29 * 300);
            sheet.setColumnWidth(4, 10 * 300);
            sheet.setColumnWidth(5, 12 * 300);
            sheet.setColumnWidth(6, 8 * 300);
            sheet.setColumnWidth(7, 10 * 300);
            sheet.setColumnWidth(8, 10 * 300);
            sheet.setColumnWidth(9, 9 * 300);

            // 大标题，合并单元格
            sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 9)); // 开始行，结束行，开始列，结束列
            // 合并单元格的内容写在合并前第一个单元格中
            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(36);

            nCell = nRow.createCell(1);
            nCell.setCellValue(tableName);
            nCell.setCellStyle(POIUtils.bigTitle(wb, nStyle, font));

            String[] title = headerStr;

            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(26.25f);

            // 初始化
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            for (int i = 0; i < title.length; i++) {
                nCell = nRow.createCell(i + 1);
                nCell.setCellValue(title[i]);
                nCell.setCellStyle(POIUtils.Title(wb, nStyle, font));

            }
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            // 换行
            for (int j = 0; j < list.size(); j++) {
                Spots spots = list.get(j);
                // 打桩 查看集合对象是否为null
                // for (Dept d : list) {
                // System.out.println(d);
                // }
                colNo = 1;
                nRow = sheet.createRow(rowNo++);
                //1
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(spots.getSpotsName());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //2
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(spots.getOpenTime());
                if(spots.getOpenTime()==null||"".equals(spots.getOpenTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getOpenTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //3
                nCell = nRow.createCell(colNo++);
                if(spots.getTicketPrice()==null||"".equals(spots.getTicketPrice())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getTicketPrice().split(",")[0]);
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                if(spots.getTelephone()==null||"".equals(spots.getTelephone())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getTelephone());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                if(spots.getAddr()==null||"".equals(spots.getAddr())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getAddr());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                if(spots.getState()==null||"".equals(spots.getState())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getState());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));


                nCell = nRow.createCell(colNo++);
                if(spots.getCreateBy()==null||"".equals(spots.getCreateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getCreateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //7
                nCell = nRow.createCell(colNo++);
                if(spots.getCreateTime()==null||"".equals(spots.getCreateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getCreateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //8
                nCell = nRow.createCell(colNo++);
                if(spots.getUpdateBy()==null||"".equals(spots.getUpdateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getUpdateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //9
                nCell = nRow.createCell(colNo++);
                if(spots.getUpdateTime()==null||"".equals(spots.getUpdateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(spots.getUpdateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
            }
        }
        // 下载
        DownloadUtils dUtil = new DownloadUtils();
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        wb.write(os);
        dUtil.download(os, response, "景点列表展示表.xls");
        os.close();
        return "pages/backend/main/manage/printtable/spotsprintlist";
    }

    @RequestMapping("/flow")
    public String printflow(HttpServletResponse response) throws IOException {
        List<Flow> dataList = spotsService.findAllFlow();
        // 设置查询条件
        // 查询数据总量
        int total = dataList.size();
        // 每页展示数据数量
        int number = 2;
        // 数据页数
        int page = total % number > 0 ? total / number + 1 : total / number;

        Workbook wb = new HSSFWorkbook();
        for (int m = 0; m < page; m++) {
            int count = m * number;
            List<Flow> list = dataList.subList(count, count+number);
            Sheet sheet = wb.createSheet("第" + (m+1) + "页");
            Row nRow = null;
            Cell nCell = null;
            // 行号
            int rowNo = 0;
            // 列号
            int colNo = 1;
            // 声明样式对象和字体对象
            CellStyle nStyle = wb.createCellStyle();
            Font font = wb.createFont();
            String tableName = "景点点击量信息报表";

            String[] headerStr = {"景点ID", "景点名称","所在城市", "点击量", "成交量","创建人", "创建时间", "更新人", "更新时间"};
            // 列宽
            sheet.setColumnWidth(0, 2 * 300);
            sheet.setColumnWidth(1, 26 * 300);
            sheet.setColumnWidth(2, 12 * 300);
            sheet.setColumnWidth(3, 29 * 300);
            sheet.setColumnWidth(4, 10 * 300);
            sheet.setColumnWidth(5, 12 * 300);
            sheet.setColumnWidth(6, 8 * 300);
            sheet.setColumnWidth(7, 10 * 300);
            sheet.setColumnWidth(8, 10 * 300);
            sheet.setColumnWidth(9, 9 * 300);

            // 大标题，合并单元格
            sheet.addMergedRegion(new CellRangeAddress(0, 0, 1, 9)); // 开始行，结束行，开始列，结束列
            // 合并单元格的内容写在合并前第一个单元格中
            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(36);

            nCell = nRow.createCell(1);
            nCell.setCellValue(tableName);
            nCell.setCellStyle(POIUtils.bigTitle(wb, nStyle, font));

            String[] title = headerStr;

            nRow = sheet.createRow(rowNo++);
            nRow.setHeightInPoints(26.25f);

            // 初始化
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            for (int i = 0; i < title.length; i++) {
                nCell = nRow.createCell(i + 1);
                nCell.setCellValue(title[i]);
                nCell.setCellStyle(POIUtils.Title(wb, nStyle, font));

            }
            nStyle = wb.createCellStyle();
            font = wb.createFont();
            // 换行
            for (int j = 0; j < list.size(); j++) {
                Flow flow = list.get(j);
                // 打桩 查看集合对象是否为null
                // for (Dept d : list) {
                // System.out.println(d);
                // }
                colNo = 1;
                nRow = sheet.createRow(rowNo++);
                //1
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(flow.getSpotsId());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //2
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(flow.getSportName());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //3
                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(flow.getCity());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(flow.getClickValume());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));

                nCell = nRow.createCell(colNo++);
                nCell.setCellValue(flow.getTradingValume());
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));



                nCell = nRow.createCell(colNo++);
                if(flow.getCreateBy()==null||"".equals(flow.getCreateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(flow.getCreateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //7
                nCell = nRow.createCell(colNo++);
                if(flow.getCreateTime()==null||"".equals(flow.getCreateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(flow.getCreateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //8
                nCell = nRow.createCell(colNo++);
                if(flow.getUpdateBy()==null||"".equals(flow.getUpdateBy())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(flow.getUpdateBy());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
                //9
                nCell = nRow.createCell(colNo++);
                if(flow.getUpdateTime()==null||"".equals(flow.getUpdateTime())){
                    nCell.setCellValue("无");
                }else{
                    nCell.setCellValue(flow.getUpdateTime());
                }
                nCell.setCellStyle(POIUtils.Text(wb, nStyle, font));
            }
        }
        // 下载
        DownloadUtils dUtil = new DownloadUtils();
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        wb.write(os);
        dUtil.download(os, response,  "景点点击量展示表.xls");
        os.close();
        return "pages/backend/main/manage/printtable/spotsprintlist";
    }


}
