package com.demo.controller;

import com.demo.entity.User;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/*import org.apache.commons.codec.digest.DigestUtils;*/
/*import javax.servlet.http.HttpSession;*/

@Controller
public class LoginController {

    @RequestMapping("/login")
    public @ResponseBody Map login(User user){
        Map map =new HashMap();
        String username=user.getUsername();
        String password=user.getPassword();

        System.out.println("==username==:"+username);
        System.out.println("==password==:"+password);
        //登录校验，返回user对象
        User us=new User("张三","123");
        if(us!=null){
            map.put("isLogin",true);
            //session.setAttribute("us",us);
            return map;
        }
        map.put("isLogin",false);
        return map;
    }

    @RequestMapping("/login2")
    public String login2(){
        System.out.println("login2 method........");
        return "login2";
    }


}
