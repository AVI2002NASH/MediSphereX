import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.controller.DoctorController;
import com.model.Doctor;
import com.service.DoctorService;

class DoctorControllerTest {
    private DoctorController doctorController;
    private DoctorService doctorService;
    private Model model;
    private BindingResult bindingResult;
    private RedirectAttributes redirectAttributes;

    @BeforeEach
    void setUp() {
        doctorService = mock(DoctorService.class);
        model = mock(Model.class);
        bindingResult = mock(BindingResult.class);
        redirectAttributes = mock(RedirectAttributes.class);
        doctorController = new DoctorController();
    }

    @Test
    void testAddDoctor() throws Exception {
        // Arrange
        String fullName = "John Doe";
        String dob = "1990-01-01";
        String qualification = "MBBS";
        String specialist = "Cardiology";
        String email = "john.doe@example.com";
        String password = "password123";
        String mobno = "1234567890";

        Doctor doctor = new Doctor(fullName, dob, qualification, specialist, email, mobno, password);
        when(bindingResult.hasErrors()).thenReturn(false);

        // Act
        String viewName = doctorController.addDoctor(fullName, dob, qualification, specialist, email, password, mobno);

        // Assert
        assertEquals("redirect:/doctor/list", viewName);
        verify(doctorService).registerDoctor(doctor);
    }
}
