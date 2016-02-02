package com.spring.mvc.controller;

import com.spring.mvc.domain.Person;
import com.spring.mvc.repository.PersonRepository;
import com.spring.mvc.validation.PersonValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by R1cro's Zenbook on 29.01.2016.
 */
@Controller
public class PersonController
{
    private PersonRepository personRepository;
    private PersonValidator personValidator;

    @Autowired
    public PersonController(PersonRepository personRepository, PersonValidator personValidator){
        this.personRepository = personRepository;
        this.personValidator = personValidator;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getPersons(Model model){
        List<Person> persons = this.personRepository.listAll();
        model.addAttribute("persons", persons);
        return "index";
    }

    @RequestMapping(value = "addPerson", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String addPerson(Model model) {
        model.addAttribute("person", new Person());

        return "addPerson";
    }

    @RequestMapping(value = "addPerson", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String addPerson(@ModelAttribute("person") Person person, BindingResult bindingResult) {
        this.personValidator.validate(person, bindingResult);
        this.personRepository.addPerson(person);

        if(bindingResult.hasErrors()) {
            return "addPerson";
        }

        return "redirect:/";
    }

    @RequestMapping(value = "deletePerson/{id}", method = RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String deletePerson(@PathVariable Integer id){
        this.personRepository.removePerson(id);

        return "redirect:/";
    }

}

