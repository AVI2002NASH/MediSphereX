package com.controller;

import com.dao.AppointmentDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class UpdateStatusController {

    @Autowired
    private AppointmentDAO appointmentDAO;

    @RequestMapping("/updateStatus")
    public String updateStatus(@RequestParam("id") int id,
                               @RequestParam("did") int doctorId,
                               @RequestParam("comm") String comment,
                               HttpSession session) throws Exception{

        try {
            if (appointmentDAO.updateCommentStatus(id, doctorId, comment)) {
                session.setAttribute("succMsg", "Comment Updated");
            } else {
                session.setAttribute("errorMsg", "Failed to update comment");
            }
        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("errorMsg", "Exception occurred: " + e.getMessage());
        }

        return "/doctor/patient";
    }
}
