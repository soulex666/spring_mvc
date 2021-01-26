package com.andreev.spring.mvc;

import com.andreev.spring.mvc.validation.CheckEmail;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.*;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Employee {
    @Size(min = 2, max = 20, message = "name must be min 2 symbols and max 20 symbols")
    private String name;

    @NotBlank (message = "surname is required field")
    private String surname;

    @Min(value = 400, message = "must be greater than 399")
    @Max(value = 1500, message = "must be less than 1501")
    private int salary;

    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "please use pattern xxx-xx-xx")
    private String phoneNumber;

    @CheckEmail(value = "gmail.com", message = "email must ends by gmail.com")
    private String emailAddress;

    private String department;
    private String carBrand;
    private String[] languages;
}
