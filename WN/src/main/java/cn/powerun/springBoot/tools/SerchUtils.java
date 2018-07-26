package cn.powerun.springBoot.tools;

/**
 * Created by Administrator on 2017/10/23.
 */

import cn.powerun.springBoot.pojo.spot.Spots;
import org.springframework.stereotype.Component;

/**
 * 搜索的工具类
 * 主要是依据反射，利用执行方法名时，只需指定方法名，
 * 根据方法字符串，执行对应方法的特性，实现动态调用参数
 */

/**
 * 利用spring的单例，很好的解决多线程间的数据共享
 */
@Component
public class SerchUtils {
    private static SerchUtils serchUtils;

    private SerchUtils(){}

    public static SerchUtils getInstance(){
        return serchUtils==null?new SerchUtils():serchUtils;
    }
    //结果信息对象
    private  ResultInfo resultInfo;

    public   void setSerchResultSpots(Spots condition,int num){
        resultInfo=new ResultInfo(condition,num);
    }
    public  Spots getSerchResultSpots(){

        return resultInfo.getSerchResultSpots();
    }
    public  int getSerchResultCounts(){

        return resultInfo.getResultNum();
    }

    public void test(){
        //获取目标类对象
//        Class clz = String.class;
//        //根据类对象，和目标方法的名称，（由于方法名是灵活的，可拼接的，）实现动态,获取目标方法
//        Method tarMethod = clz.getMethod(methodName,String.class);
//        //执行方法
//        tarMethod.invoke(clz,args);
    }

    class ResultInfo{
        private  int resultNum = 0;
        private  Spots serchResultSpots;
        public ResultInfo(Spots serchResultSpots,int resultNum){
            this.resultNum = resultNum;
            this.serchResultSpots = serchResultSpots;
        }
        public  void setSerchResultSpots(Spots condition,int num){
            serchResultSpots = condition;
            resultNum = num;
        }
        public  Spots getSerchResultSpots(){
            return serchResultSpots;
        }
        public int getResultNum(){
            return resultNum;
        }
    }
}
