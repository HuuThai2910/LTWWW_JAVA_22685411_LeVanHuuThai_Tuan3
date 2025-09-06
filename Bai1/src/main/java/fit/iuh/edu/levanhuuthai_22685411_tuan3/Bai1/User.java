package fit.iuh.edu.levanhuuthai_22685411_tuan3.Bai1;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;
    private String email;
    private String number;
    private String address;
    private String city;
    private String code;
    private String state;
    private String country;
    private List<String> hobbies;
    private String course;
}
