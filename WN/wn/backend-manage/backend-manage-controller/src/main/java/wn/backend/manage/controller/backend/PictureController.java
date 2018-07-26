package wn.backend.manage.controller.backend;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/10/21.
 */
@Controller
public class PictureController {

    @RequestMapping("/staticfiles")
    public String staticfiles(){
        System.out.println("文件上传成功");
        return "上传成功";
    }
}
