
package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Appointment;
import com.service.AppointmentService;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;
    
    
    
    
    @RequestMapping("/saveAppointment")
    public String saveAppointment(@ModelAttribute("appointment") Appointment appointment) throws Exception{
        boolean saved = appointmentService.saveAppointment(appointment);
        if (saved) {
            
            return "view_appointment";
        } else {
            
            return "user_appointment"; 
        }
    }
    
    
    @RequestMapping("/viewappointments")
    public String getAllAppointments(Model model) throws Exception{
        List<Appointment> appointments = appointmentService.getAllAppointment();
        model.addAttribute("appointments", appointments);
        return "view_appointment";
    }

    @GetMapping("/appointments/{id}")
    public String getAppointmentById(@PathVariable("id") int id, Model model) throws Exception{
        Appointment appointment = appointmentService.getAppointmentById(id);
        model.addAttribute("appointment", appointment);
        return "view_appointment"; 
}
}