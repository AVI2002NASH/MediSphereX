package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Doctor;
import com.service.DoctorService;

@Controller

public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @RequestMapping("/viewdoctorlist")
    public String getAllDoctors(Model model)throws Exception {
        List<Doctor> doctors = doctorService.getAllDoctors();
        model.addAttribute("doctors", doctors);
        return "admin/viewdoctor";     }

    @RequestMapping("/doctor/{id}")
    public String getDoctorById(@PathVariable("id") int id, Model model) throws Exception{
        Doctor doctor = doctorService.getDoctorById(id);
        model.addAttribute("doctor", doctor);
        return "doctor/index"; 
    }

    @RequestMapping("/adddoctor")
    public String showAddDoctorForm() throws Exception{
        return "admin/doctor";
    }

    @PostMapping("/adddoctor")
    public String addDoctor(@RequestParam("fullName") String fullName,
                            @RequestParam("dob") String dob,
                            @RequestParam("qualification") String qualification,
                            @RequestParam("specialist") String specialist,
                            @RequestParam("email") String email,
                            @RequestParam("password") String password,
                            @RequestParam("mobno") String mobno) throws Exception{
        Doctor doctor = new Doctor(fullName, dob, qualification, specialist, email, mobno, password);
        doctorService.registerDoctor(doctor);
        return "redirect:/doctor";
    }

    @RequestMapping("/edit_doctor/{id}")
    public String showEditDoctorForm(@PathVariable("id") int id, Model model) throws Exception{
        Doctor doctor = doctorService.getDoctorById(id);
        model.addAttribute("doctor", doctor);
        return "edit_doctor"; 
    }

    @PostMapping("/edit_doctor/{id}")
    public String editDoctor(Doctor doctor) throws Exception{
        doctorService.updateDoctor(doctor);
        return "redirect:/doctor/list";
    }

    @RequestMapping("/delete/{id}")
    public String deleteDoctor(@PathVariable("id") int id) throws Exception{
        doctorService.deleteDoctor(id);
        return "admin/viewdoctor";
    }

    @RequestMapping("/login")
    public String showLoginForm()throws Exception {
        return "doctor_login"; 
    }

    @PostMapping("/login")
    public String loginDoctor(@RequestParam("email") String email,
                              @RequestParam("password") String password,
                              Model model) throws Exception{
        Doctor doctor = doctorService.login(email, password);
        if (doctor != null) {
           
            return "redirect:/doctor/dashboard"; 
        } else {
            model.addAttribute("errorMsg", "Invalid email or password");
            return "doctor_login";
        }
    }

    
}
