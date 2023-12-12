package cn.edu.tyut.controller;

import cn.edu.tyut.entity.User;
import jakarta.servlet.http.HttpSession;
import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @Author 羊羊
 * @ClassName UserController
 * @SubmitTime 周二
 * @DATE 2023/12/12
 * @Time 16:24
 * @Package_Name cn.edu.tyut.Controller
 */
@Controller
public class UserController {
    @GetMapping("/main")
    public String toMainPage() {
        return "main";
    }

    @PostMapping("/toLogin")
    public String toLoginPage() {
        return "login";
    }

    @GetMapping("/orderInfo")
    public String orderInfo() {
        return "orderInfo";
    }

    @PostMapping("/login")
    public String login(@NotNull User user, Model model, HttpSession httpSession) {
        String username = user.getUsername();
        String password = user.getPassword();
        if ("admin".equals(username) && "123456".equals(password)) {
            httpSession.setAttribute("USER_SESSION", user);
            return "main";
        }
        model.addAttribute("msg", "用户名或密码错误，请重新登录...");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(@NotNull HttpSession httpSession) {
        // 删除HttpSession
        httpSession.invalidate();
        return "redirect:toLogin";
    }
}