

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.dao.DoctorDao;
import com.model.Doctor;
import com.service.DoctorServiceImpl;

public class AddDoctorTest {

    @InjectMocks
    private DoctorServiceImpl doctorService;

    @Mock
    private DoctorDao doctorDao;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testAddDoctor() {
        // Arrange
        Doctor doctor = new Doctor("John Doe", "1990-01-01", "MBBS", "Cardiologist", "john@example.com", "1234567890", "password");
        
        when(doctorDao.registerDoctor(any(Doctor.class))).thenReturn(true);

        // Act
        boolean result = doctorService.registerDoctor(doctor);

        // Assert
        assertTrue(result);
        verify(doctorDao, times(1)).registerDoctor(doctor);
    }
}
