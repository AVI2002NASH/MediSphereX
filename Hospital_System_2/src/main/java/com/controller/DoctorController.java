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
@RequestMapping("/doctor")
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @GetMapping("/list")
    public String getAllDoctors(Model model) {
        List<Doctor> doctors = doctorService.getAllDoctors();
        model.addAttribute("doctors", doctors);
        return "admin/viewdoctor";     }

    @GetMapping("/{id}")
    public String getDoctorById(@PathVariable("id") int id, Model model) {
        Doctor doctor = doctorService.getDoctorById(id);
        model.addAttribute("doctor", doctor);
        return "doctor_details"; 
    }

    @GetMapping("/add")
    public String showAddDoctorForm() {
        return "add_doctor";
    }

    @PostMapping("/add")
    public String addDoctor(@RequestParam("fullName") String fullName,
                            @RequestParam("dob") String dob,
                            @RequestParam("qualification") String qualification,
                            @RequestParam("specialist") String specialist,
                            @RequestParam("email") String email,
                            @RequestParam("password") String password,
                            @RequestParam("mobno") String mobno) {
        Doctor doctor = new Doctor(fullName, dob, qualification, specialist, email, mobno, password);
        doctorService.registerDoctor(doctor);
        return "redirect:/doctor/list";
    }

    @GetMapping("/edit/{id}")
    public String showEditDoctorForm(@PathVariable("id") int id, Model model) {
        Doctor doctor = doctorService.getDoctorById(id);
        model.addAttribute("doctor", doctor);
        return "edit_doctor"; 
    }

    @PostMapping("/edit")
    public String editDoctor(Doctor doctor) {
        doctorService.updateDoctor(doctor);
        return "redirect:/doctor/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteDoctor(@PathVariable("id") int id) {
        doctorService.deleteDoctor(id);
        return "redirect:/doctor/list";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "doctor_login"; 
    }

    @PostMapping("/login")
    public String loginDoctor(@RequestParam("email") String email,
                              @RequestParam("password") String password,
                              Model model) {
        Doctor doctor = doctorService.login(email, password);
        if (doctor != null) {
           
            return "redirect:/doctor/dashboard"; 
        } else {
            model.addAttribute("errorMsg", "Invalid email or password");
            return "doctor_login";
        }
    }

    
}
