package wn.backend.manage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import wn.backend.manage.mapper.CategoryMapper;
import wn.backend.manage.mapper.FlowMapper;
import wn.backend.manage.mapper.PictureMapper;
import wn.backend.manage.mapper.SpotsMapper;
import wn.backend.manage.pojo.Category;
import wn.backend.manage.pojo.Flow;
import wn.backend.manage.pojo.Picture;
import wn.backend.manage.pojo.Spots;
import wn_backend.backend_common.SpotTool;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * 景点业务层实现类
 */
@Service
public class SpotsServiceImpl implements SpotsService {

    @Autowired
    private SpotsMapper spotsMapper;
    @Autowired
    private PictureMapper pictureMapper;
    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private FlowMapper flowMapper;

    private  int counts;

    private Spots conditionSpot;

    public Spots getConditionSpot(){
        return this.conditionSpot;
    }

    public  void   setCounts(int num){
        counts = num;
    }
    public  int   getCounts(){
        return counts;
    }

    public List<SpotTool> spotToolList() {
        return spotsMapper.spotToolList();
    }

    @Override
    public List<Flow> findAllFlow() {
        return flowMapper.findAllFlow();
    }
    public List<Spots> findAll() {

        return spotsMapper.findAll();
    }

    @Override
    public List<Spots> spotsList() {
        return spotsMapper.spotsList();
    }
    @Override
    public Spots findSpotsById(String spotsId) {

        return spotsMapper.findSpotsById(spotsId);
    }
    @Override
    public void saveSpots(MultipartFile file, Spots spots, HttpServletRequest request) throws IOException {
        //由于该景点没有Id，创建时间，修改时间，所以在此添加该属性
        spots.setSpotsId(UUID.randomUUID().toString());
        spots.setCreateTime(new Date());
        spots.setUpdateTime(spots.getCreateTime());

        InputStream is = file.getInputStream();//按此可以得到流
        String path = "D:\\test\\"+spots.getSpotsName()+"\\";
        File dir = new File(path);
        if(!dir.exists()){
            dir.mkdirs();
        }
        String temp_file = spots.getSpotsName()+ System.currentTimeMillis()+".jpg";
        File fileP = new File(dir,temp_file);
        FileOutputStream out = new FileOutputStream(temp_file);
        /*String realwebbase =*//* request.getSession().getServletContext().getRealPath("/Img/test")+"\\"+*//*"D:\\test\\"+spots.getSpotsName()+ System.currentTimeMillis();
        File fileReal = new File(realwebbase);
        FileOutputStream outReal = new FileOutputStream(fileReal);*/
        int index = -1;
        byte[] bytes = new byte[100];
        while(-1 != (index = is.read(bytes))){
            System.out.println(index);
            out.write(bytes,0,index);
            /*outReal.write(bytes,0,index);*/

        }
        out.close();
        fileP.createNewFile();
        Picture picture = new Picture();
        picture.setImgurl(fileP.getAbsolutePath());
        picture.setPictureId(UUID.randomUUID().toString());
        //定义中间替换图片
        List<Picture> pictureListTmp = new ArrayList<Picture>();
        pictureListTmp.add(picture);
        spots.setPictureList(pictureListTmp);
        //保存景点信息

        //保存景点信息
        spotsMapper.saveSpots(spots);

        //保存图片信息
        List<Picture> pictureList = spots.getPictureList();
        if (!StringUtils.isEmpty(pictureList)) {
            for (Picture p : pictureList) {
                p.setPictureId(UUID.randomUUID().toString());
                //TODO
                /*p.setImgurl();*/
                //保存图片表
                pictureMapper.savePicture(p);

                //保存景点图片关联信息
                spotsMapper.saveSpotsPicture(spots.getSpotsId(), p.getPictureId());
            }

        }
        //保存类别信息
        Category category = spots.getCategory();
        if (!StringUtils.isEmpty(category)) {
            //保存景点类别信息表
            categoryMapper.saveSpotsCategory(spots.getSpotsId(), category.getCategoryId());
        }


        //保存流量信息表
        /*Flow flow = spots.getFlow();
        spotsMapper.saveFlow(flow);*/

    }
    @Override
    public void updateSpots(MultipartFile file, Spots spots,HttpServletRequest request) throws IOException {
        System.out.println(spots);
        spots.setUpdateTime(new Date());
        spotsMapper.updateSpots(spots);

        spots.setUpdateTime(new Date());
        spotsMapper.updateSpots(spots);

        InputStream is = file.getInputStream();//按此可以得到流
        String path = "D:\\test\\"+spots.getSpotsName()+"\\";
        File dir = new File(path);
        if(!dir.exists()){
            dir.mkdirs();
        }
        String temp_file = spots.getSpotsName()+ System.currentTimeMillis()+".jpg";
        File fileP = new File(dir,temp_file);
        fileP.createNewFile();
        System.out.println(fileP.getTotalSpace());
        FileOutputStream out = new FileOutputStream(fileP);
        /*String realwebbase =*//* request.getSession().getServletContext().getRealPath("/Img/test")+"\\"+*//*"D:\\test\\"+spots.getSpotsName()+ System.currentTimeMillis();
        File fileReal = new File(realwebbase);
        FileOutputStream outReal = new FileOutputStream(fileReal);*/
        int index = -1;
        byte[] bytes = new byte[100];
        while(-1 != (index = is.read(bytes))){
            out.write(bytes,0,index);
            /*outReal.write(bytes,0,index);*/
        }
        out.close();
        Picture picture = new Picture();
        picture.setImgurl(fileP.getAbsolutePath());
        picture.setPictureId(UUID.randomUUID().toString());
        //定义中间替换图片
        List<Picture> pictureListTmp = new ArrayList<Picture>();
        pictureListTmp.add(picture);
        spots.setPictureList(pictureListTmp);


        //更新图片信息
        List<Picture> pictureList = spots.getPictureList();
        if(!StringUtils.isEmpty(pictureList)){
           for (Picture p : pictureList) {
               p.setUpdateTime(spots.getUpdateTime());
               //TODO
            /*p.setImgurl();*/
               //更新图片表
               pictureMapper.updatePicture(p);

               //更新景点图片关联信息
               spotsMapper.updateSpotsPicture(spots.getSpotsId(), p.getPictureId());
           }
       }

        //更新类别信息
        Category category = spots.getCategory();

        //更新景点类别信息表
        categoryMapper.updateSpotsCategory(spots.getSpotsId(), category.getCategoryId());

    }
    @Override
    public void updateState(String[] spotsIds, Integer state) {
        for (String spotsId : spotsIds) {
            spotsMapper.updateState(spotsId, state);
        }
    }
    @Override
    public void deleteSpots( String[] spotsIds) {
        for (String spotsId : spotsIds) {
            //删除景点图片表（包含图片表）
            Spots spots = spotsMapper.findSpotsById(spotsId);
            List<Picture> pictureList = spots.getPictureList();
            if (!StringUtils.isEmpty(pictureList)) {
                for (Picture p : pictureList) {
                    pictureMapper.deletePicture(p.getPictureId());
                    //删除景点图片关联信息
                    spotsMapper.deleteSpotsPicture(spots.getSpotsId());
                }
            }
            //删除景点类别表
            Category category = spots.getCategory();
            //删除景点类别信息表
            categoryMapper.deleteSpotsCategory(spots.getSpotsId());

            //删除景点流量表
            spotsMapper.deleteFlow(spotsId);

            //删除景点信息
            spotsMapper.deleteSpots(spotsId);

        }

    }

    @Override
    public List<Spots> findByPage(Integer count) {
        count=(count-1)*9;
        return spotsMapper.findByPage(count);
    }

    @Override
    public void updataClickValue(String spotsId, Integer clickValue) {
        spotsMapper.updataClickValue(spotsId,clickValue);
    }

    /**
     * 按照条件，动态搜索
     *
     * @param condition
     * @return
     */
    @Override
//    public List<Spots> findAllWithCondition(String condition) {
    public Map findAllWithCondition(String condition) {

        //根据自定义方法，根据原始条件字符串，和策略，匹配属性封装成对象
        Spots tar = instanceSpotsByCondition(condition);

        //设置查询结果对象
        this.conditionSpot = tar;
//        System.out.println("条件:" + tar);
        Map rsm = new HashMap();
        List<Spots> spotsList = spotsMapper.findAllWithCondition(tar);
        rsm.put("resultSet",spotsList);
        rsm.put("counts",spotsList.size());
        rsm.put("condition",tar);
        return rsm;
    }

    /**
     * 根据条件和策略，封装一个对应的景点对象，以供查询
     */
    public Spots instanceSpotsByCondition(String condition) {
        //创建一个空对象
        Spots tar = new Spots();

        //去除前后空格
        String condtion = condition.trim();


        if (!("".equals(condition))) {
            //参数不为空

//        语法：  名称_价格_开放时间（全天,上午，下午,半天）,类别
//            匹配优先级：价格》类别》开放时间》名称
//          默认：名称  最终是名称的拼接
//          最后一个价格为最终价格,
//          最后一个开放时间关键字为最终的开放时间属性


//        方法一：数组的循环
            //获取所有类别
            List<Category> categoryList = categoryMapper.findAll();
            //开放时间的匹配策略
            List<String> optimeList = Arrays.asList("全天,下午,上午,半天".split(","));
//            String[] st = "全天,下午,上午,半天".split(",");
//            List<String> optimeList = Arrays.asList(st);
//            List<String> optimeList = new ArrayList<String>();
//            optimeList.add("全天");
//            optimeList.add("下午");
//            optimeList.add("上午");
//            optimeList.add("半天");
            boolean categoryFlag = false;  //标识类别属性是否已经设置过的表示
            boolean priceFlag = false; //标识价格属性是否已经设置过的表示
            boolean optimeFlag = false; //标识开放时间属性是否已经设置过的表示

            //1.根据空格拆分条件,并转成集合
            String[] args = condition.split(" ");
            List<String> argList = Arrays.asList(args);
            //2.循环，判断票价属性
        /*
        原理：
        1.判断是不是票价（因为有数字）
        2.判断是不是开放时间关键字
        3.判断是不是类别关键字
        4.默认设为名称(最后的参数的拼接)
         */
            String tarName = ""; //用于拼接
            Category tarC = new Category();//用于最后定类别
            //用于记录所匹配到的参数个数，用于根据粗略，给未匹配的参数设置为名称时提供判断条件
            int checkedNum = 0;
            //为景点对象添加类别对象
            tar.setCategory(tarC);
            for (String arg : args) {
                //2.1.根据语法特点，先判断是否有数字
                //试着设置条件为票价（原理：如果是票价，有任何数字,强转成数字类型成功，
                // 说明没有任何数字，没有数字，再判断是不是免费关键字）
//              if(!priceFlag){ //如果这里加标识的效果是：输入的第一个价格关键字为最后价格属性
                try {
                    //2.2..试着转换成小数的票价
                    double num = Double.parseDouble(arg);
//                转换成功，说明就是小数的票价
                    //设置票价,
                    tar.setTicketPrice(arg);
                    //设置票价,
                    priceFlag = true; //将价格标识设置为  已标识过  @1
                    checkedNum++;
                    continue;
                } catch (java.lang.Exception e) {
                    try {
                        //2.3.尝试转换成整数的票价
                        int num = Integer.parseInt(arg);
                        //转换成功，说明是整数的票价
                        //设置票价
                        tar.setTicketPrice(arg);
                        //设置票价,
                        priceFlag = true; //将价格标识设置为  已标识过 @1
                        checkedNum++;
                        continue;
                    } catch (java.lang.Exception e2) {
//                         ，2.4没有数字，但需判断是不是“免费”关键字
                        if ("免费".equals(arg)) {
                            //是免费关键字
                            tar.setTicketPrice(arg);
                            //设置票价,
                            priceFlag = true; //将价格标识设置为  已标识过  @1
                            checkedNum++;
                            continue;
                        }
                    }
//                }
                    //3.试着判断是不是类别
                    if (categoryList != null) {
//               if((!categoryFlag)categoryList!=null){+设置开放时间为，已标识过,效果，让第一次的开放时间关键字为最终属性值
                        System.out.println(categoryList);
                        boolean checked = false;
                        for (Category category : categoryList) {
                            if (arg.equals(category.getCategoryName())) {
                                //匹配到数据库中的类别，
//                        设置最后一个匹配的参数为最终景点类别

                                tarC.setCategoryName(arg);
//                                categoryFlag = true;
                                checkedNum++;
                                checked = true;
                            }
                        }
                        if(checked){
                            continue;
                        }
                    }

                    //4.试着判断是不是“全天,下午，上午，半天”
//                if( (!optimeFlag)&&optimeList.contains(arg)){+设置开放时间为，已标识过,效果，让第一次的开放时间关键字为最终属性值
//                    System.out.println("opL:"+optimeList.contains(arg));
                    if (optimeList.contains(arg)) {
//            有开放时间关键字
                        //设置开放时间，让数据库模糊查询

                        tar.setOpenTime(arg);
//                        optimeFlag = true; //设置开放时间为，已标识过,效果，让第一次的开放时间关键字为最终属性值
                        checkedNum ++;
//                        System.out.println("arg:"+arg);
                        continue;
                    }


                    //5.设置名称,默认为名称，所以不需卡标识
//           if(!nameFlag){
                    //不见标识效果：  让最后一个“名称类型”的关键字为最终名称,
                    //但是这里的目标是名称的拼接,所以也不需要加卡标识
                    tarName = tarName + arg;
//               nameFlag = true; //设置名称属性为 已标识,效果，让第一次的开放时间关键字为最终属性值
//           }

                }
//                System.out.println("argout"+arg);
                if (checkedNum!=args.length) {
                    //
                    //将名称设置为最终拼接后的名称
                    tar.setSpotsName(tarName);
                }
            }

//            System.out.println("op"+optimeList);


            //定义价格对应的策略
//        String ticketsReg = "[0-9]+///.";


            //根据策略封装

//        方法二 ：-------
//        //1.根据空格拆分条件
//        String[] args = condition.split(" ");
            //2.遍历参数
            //尝试封装名称
//
//        for (String arg : args) {
//            //试着转换
//            try{
//                double ticket = Double.parseDouble(arg);
////                转换成功，参数为纯价格数字,可以指定为价格
//                tar.setTicketPrice(arg); //设置为价格
//            } catch(Exception e){
//                //转换失败，
//            }
//        }
        }
        //        将封装后的对象，返回

        return tar;
    }

	@Override
	public List<Spots> finaTop3() {
		return spotsMapper.findTop3();
	}

	@Override
	public List<Spots> findAll6(Integer n) {
		return spotsMapper.findAll6(n);
	}

}
