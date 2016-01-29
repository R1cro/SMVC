package com.spring.mvc.controller;

import com.spring.mvc.domain.Person;
import com.spring.mvc.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by R1cro's Zenbook on 29.01.2016.
 */
@Controller
public class PersonController {

    private PersonRepository personRepository;


    @Autowired
    public PersonController(PersonRepository personRepository){
        this.personRepository = personRepository;
    }

     @RequestMapping(value = "/", method = RequestMethod.GET)
     public String getPersons(Model model){
         List<Person> persons = this.personRepository.listAll();
         model.addAttribute("persons",persons);
         return "index";

     }
}
