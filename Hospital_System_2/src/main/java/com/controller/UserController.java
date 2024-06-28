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

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    

    @GetMapping("/register")
    public String registerUser(@ModelAttribute("user") User user, Model model) {
        boolean isSuccess = userService.saveUser(user);
        if (isSuccess) {
            model.addAttribute("succMsg", "User registered successfully");
        } else {
            model.addAttribute("errorMsg", "Failed to register user");
        }
        return "redirect:/login"; 
    }

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User()); 
        return "login"; 
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute("user") User user, Model model) {
        User loggedInUser = userService.login(user.getEmail(), user.getPassword());
        if (loggedInUser != null) {
            model.addAttribute("succMsg", "Login successful");
           
            return "redirect:/index";
        } else {
            model.addAttribute("errorMsg", "Invalid email or password");
            return "login"; 
        }
    }
    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false); 
        if (session != null) {
            session.invalidate(); 
        }
        return "redirect:/login"; 
    }

   
}
