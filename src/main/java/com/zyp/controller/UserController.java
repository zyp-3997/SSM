package com.zyp.controller;

import com.zyp.entity.User;
import com.zyp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-05-05 22:04
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    //查询所有用户
    @RequestMapping("/findAll")
    public String list(Model model){
        List<User> list = userService.findAll();
        model.addAttribute("list",list);
        return "list";
    }
    //跳转到添加页面
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "add";
        }
    //添加
    @RequestMapping("/add")
    public String add(User user){
        userService.add(user);
    return "redirect:/user/findAll";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdate(int userid,Model model){
        User user = userService.findById(userid);
        model.addAttribute("user",user);
        return "edit";
    }
    //修改
    @RequestMapping("/update")
    public String update(User user){
        userService.update(user);
        return "redirect:/user/findAll";
    }
    //删除
    @RequestMapping("/delete/{userid}")
    public String delete(@PathVariable("userid") int id){
        userService.delete(id);
        return "redirect:/user/findAll";
    }
    //按照Id查询
    @RequestMapping("/findById")
    public String findById(int userid,Model model){
        User user = userService.findById(userid);
        if (user!=null){
        List<User> list=new ArrayList<User>();
        list.add(user);
        model.addAttribute("list",list);
        return "list";}
        else {
            String error="没有此用户";
            model.addAttribute("error",error);
            return "forward:/index.jsp";
        }
    }
}
