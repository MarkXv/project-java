package wn.backend.manage.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
@RequestMapping("/backend/spots/discuss")
public class DiscussController {

    @RequestMapping("/view")
    public String toDiscuss(String discussId)
    {
        return "pages/backend/main/manage/spots/discuss/discussview";
    }

}
