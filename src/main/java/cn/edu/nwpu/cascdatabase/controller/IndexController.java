package cn.edu.nwpu.cascdatabase.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @ClassName IndexController
 * @Author: wkx
 * @Date: 2019/6/30 09:27
 * @Version: v1.0
 * @Description: 用于访问页面的Controller
 */
@Controller
public class IndexController {

    @GetMapping("/index")
    public String showIndex(){
        return "index";
    }

    @GetMapping("/test")
    public String showTest(){
        return "/layout-3.html";
    }
}
