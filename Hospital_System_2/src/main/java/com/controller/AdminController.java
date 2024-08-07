package com.controller;

import com.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;




@Controller
public class AdminController {

	@RequestMapping("/adminLogin")
    public String adminLogin(@RequestParam("email") String email,
                             @RequestParam("password") String password,
                             HttpSession session)throws Exception {

        try {
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                session.setAttribute("adminObj", new User()); 
                return "redirect:/admin/index.jsp";
            } else {
                session.setAttribute("errorMsg1", "Invalid email or password");
                return "redirect:/admin_login.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/admin_login.jsp";
        }
    }
    @RequestMapping("/adminLogout")
    public String adminLogout(HttpSession session) throws Exception{
        // Invalidating session
        session.invalidate();

        // Redirect to login page
        return "redirect:/admin_login.jsp";
    }
}
