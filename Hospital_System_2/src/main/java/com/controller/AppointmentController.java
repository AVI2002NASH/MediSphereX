
package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.model.Appointment;
import com.service.AppointmentService;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;
    
    
    
    
    @PostMapping("/saveAppointment")
    public String saveAppointment(@ModelAttribute("appointment") Appointment appointment) {
        boolean saved = appointmentService.saveAppointment(appointment);
        if (saved) {
            
            return "redirect:/appointments";
        } else {
            
            return "redirect:/appointmentForm"; 
        }
    }
    
    
    @GetMapping("/appointments")
    public String getAllAppointments(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointment();
        model.addAttribute("appointments", appointments);
        return "appointment_list";
    }

    @GetMapping("/appointments/{id}")
    public String getAppointmentById(@PathVariable("id") int id, Model model) {
        Appointment appointment = appointmentService.getAppointmentById(id);
        model.addAttribute("appointment", appointment);
        return "appointment_details"; 
}
}