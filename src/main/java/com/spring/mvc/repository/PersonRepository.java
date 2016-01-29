package com.spring.mvc.repository;

import com.spring.mvc.domain.Person;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by R1cro's Zenbook on 29.01.2016.
 */
@Repository
@Transactional
public class PersonRepository {

      @Autowired
      private SessionFactory sessionFactory;

      public void addPerson(Person person){
          this.sessionFactory.getCurrentSession().save(person);
      }


      public List<Person> listAll(){
            return this.sessionFactory
                    .getCurrentSession()
                    .createQuery("from Person")
                    .list();
      }

      public void removePerson(Integer id){
          Person person = (Person) this.sessionFactory.getCurrentSession().load(
                  Person.class, id);
          if(null != person){
              this.sessionFactory.getCurrentSession().delete(person);
          }
      }

}
