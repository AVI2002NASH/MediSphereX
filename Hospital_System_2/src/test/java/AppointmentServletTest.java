

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.ui.Model;

import com.controller.AppointmentController;
import com.model.Appointment;
import com.service.AppointmentService;

class AppointmentControllerTest {

    @Mock
    private AppointmentService appointmentService;

    @InjectMocks
    private AppointmentController appointmentController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testSaveAppointment() {
        Appointment appointment = new Appointment(1, 2, "2023-06-28", "10:00", "Consultation", "Pending", null, null, null, 0, null, null);
        when(appointmentService.saveAppointment(appointment)).thenReturn(true);

        String result = appointmentController.saveAppointment(appointment);

        assertEquals("redirect:/appointments", result);
    }

    @Test
    void testGetAllAppointments() {
        Model model = new org.springframework.ui.ExtendedModelMap();

        String result = appointmentController.getAllAppointments(model);

        assertEquals("appointment_list", result);
    }

    @Test
    void testGetAppointmentById() {
        int appointmentId = 1;
        Appointment appointment = new Appointment(1, 2, "2023-06-28", "10:00", "Consultation", "Pending", null, null, null, appointmentId, null, null);
        Model model = new org.springframework.ui.ExtendedModelMap();

        when(appointmentService.getAppointmentById(appointmentId)).thenReturn(appointment);

        String result = appointmentController.getAppointmentById(appointmentId, model);

        assertEquals("appointment_details", result);
    }
}
