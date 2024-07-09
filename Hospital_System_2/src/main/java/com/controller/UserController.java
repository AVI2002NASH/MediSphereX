package com.controller;

import com.model.User;
import com.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    

    @RequestMapping("/register")
    public String registerUser(@ModelAttribute("user") User user, Model model)throws Exception {
        boolean isSuccess = userService.saveUser(user);
        if (isSuccess) {
            model.addAttribute("succMsg", "User registered successfully");
        } else {
            model.addAttribute("errorMsg", "Failed to register user");
        }
        return "redirect:/login"; 
    }

    @RequestMapping("/login")
    public String showLoginForm(Model model) throws Exception{
        model.addAttribute("user", new User()); 
        return "login"; 
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute("user") User user, Model model) throws Exception{
        User loggedInUser = userService.login(user.getEmail(), user.getPassword());
        if (loggedInUser != null) {
            model.addAttribute("succMsg", "Login successful");
           
            return "redirect:/index";
        } else {
            model.addAttribute("errorMsg", "Invalid email or password");
            return "login"; 
        }
    }
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request)throws Exception {
        HttpSession session = request.getSession(false); 
        if (session != null) {
            session.invalidate(); 
        }
        return "redirect:/login"; 
    }

   
}
