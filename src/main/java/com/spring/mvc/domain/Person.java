package com.spring.mvc.domain;

import javax.persistence.*;

/**
 * Created by R1cro's Zenbook on 29.01.2016.
 */


@Entity
@Table(name = "persons")
public class Person {

    @Id
    @Column(name = "id")
    @GeneratedValue()
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "age")
    private Integer age;

    @Column(name = "nickname")
    private String nickname;

    public Integer getId() {
             return id;
         }

    public void setId(Integer id) {
             this.id = id;
         }

    public String getName() {
             return name;
         }

    public void setName(String name) {
             this.name = name;
         }

    public Integer getAge() {
             return age;
         }

    public void setAge(Integer age) {
             this.age = age;
         }

    public String getNickname() {
             return nickname;
         }

    public void setNickname(String nickname) {
             this.nickname = nickname;
         }

}
