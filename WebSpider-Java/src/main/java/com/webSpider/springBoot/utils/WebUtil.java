package com.webSpider.springBoot.utils;



import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.DomElement;
import com.gargoylesoftware.htmlunit.html.DomNodeList;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

import com.webSpider.springBoot.bean.Item;
import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.xml.sax.SAXException;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WebUtil {
    private static final Logger logger = Logger.getLogger(WebUtil.class);
    private static final ObjectMapper objectMapper = new ObjectMapper();


    /**
     * 由于页面实在js触发后才产生的数据，所以使用httpunit进行获取页面数据，弥补Jsoup的不足
     * @return
     */
    public static List<String> testGetHtmlContent(String url) throws IOException, SAXException {

        List<String> list_first = new ArrayList<String>();

        WebClient wc = new WebClient(BrowserVersion.CHROME);
        wc.getOptions().setUseInsecureSSL(true);
        wc.getOptions().setJavaScriptEnabled(true); // 启用JS解释器，默认为true
        wc.getOptions().setCssEnabled(false); // 禁用css支持
        wc.getOptions().setThrowExceptionOnScriptError(false); // js运行错误时，是否抛出异常
        wc.getOptions().setTimeout(100000); // 设置连接超时时间 ，这里是10S。如果为0，则无限期等待
        wc.getOptions().setDoNotTrackEnabled(false);
        HtmlPage page = wc
                .getPage(url);

        DomNodeList<DomElement> links = page.getElementsByTagName("a");

        for (DomElement link : links) {
            //System.out.println(link.asText() +  ":"  + link.getAttribute("href"));
            if(link.asText().length() < 20){
               list_first.add(link.getAttribute("href"));
            }
        }
        //System.out.println(list_first);
        return list_first;
    }
        public static List<String> getTowLevelPage(List<String> list_first) throws IOException, SAXException {
            List<String> list_two = new ArrayList<String>();

            for(String url : list_first){

                if(url.startsWith("/ch/")){
                    list_two.add("https://www.toutiao.com/"+url);
                    List<String> list  = testGetHtmlContent("https://www.toutiao.com/"+url);

                    list_two.addAll(list);

                }else if(url.startsWith(" https://www.toutiao.com/")){
                    list_two.add(url);
                }
            }



        return list_two;
    }




    //测试代码
    public static void main(String[] args) throws IOException, SAXException {




        List<String> list = getTowLevelPage(testGetHtmlContent("https://www.toutiao.com/"));

        File file = new File("D://url_toutiao.text");

        FileOutputStream out = new FileOutputStream(file);
        for(String url : list){
            if(url.startsWith("http")){
                out.write((url+"\r\n").getBytes(),0,url.getBytes().length);

            }
        }

        out.close();



    }






}