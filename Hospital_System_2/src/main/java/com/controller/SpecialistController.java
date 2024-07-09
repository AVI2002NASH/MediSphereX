package com.controller;

import com.model.Specialist;
import com.service.SpecialistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SpecialistController {

    @Autowired
    private SpecialistService specialistService;
    
    
    
    @RequestMapping("/addspecialist")
    public String showAddSpecialistForm(Model model)throws Exception {
        model.addAttribute("specialist", new Specialist()); 
        return "add_specialist"; 
    }

    // POST mapping to handle form submission for adding a specialist
    @RequestMapping("/addspecialist")
    public String addSpecialist(@ModelAttribute("specialist") Specialist specialist, Model model) throws Exception{
        boolean isSuccess = specialistService.addSpecialist(specialist.getSpecialistName()); 
        if (isSuccess) {
            model.addAttribute("succMsg", "Specialist added successfully");
        } else {
            model.addAttribute("errorMsg", "Failed to add specialist");
        }
        return "redirect:/specialists"; 
    }
    
    
    @RequestMapping("/specialists")
    public String getAllSpecialists(Model model) throws Exception{
        List<Specialist> specialists = specialistService.getAllSpecialists();
        model.addAttribute("specialists", specialists);
        return "specialist_list"; 
    }
    
}
