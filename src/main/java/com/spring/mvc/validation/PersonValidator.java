package com.spring.mvc.validation;

import com.spring.mvc.domain.Person;
import com.sun.xml.internal.ws.developer.MemberSubmissionAddressing;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by user on 29.01.2016.
 */
@Component
public class PersonValidator implements Validator {

    @Override
    public boolean supports(Class<?> aClass){
        return Person.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object model, Errors errors){
        ValidationUtils.rejectIfEmpty(errors, "name", "required.name", "Name is required!");
        ValidationUtils.rejectIfEmpty(errors, "age", "required.age", "Age is required!");
        ValidationUtils.rejectIfEmpty(errors, "nickname", "required.nickname", "Nickname is required!");
    }
}
