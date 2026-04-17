package org.ahad.movieapp.entity;

import jakarta.persistence.*;
public class Users {


    @Entity
    @Table(name="users")
    public class User {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "user_id")

        private int user_id;
        @Column(name = "name")

        private String name;
        @Column(name = "number")

        private String number;
        @Column(name = "email")

        private String email;
        @Column(name = "password")

        private String password;
        public User() {
        }

        public User(String name, String number, String email, String password) {
            this.name = name;
            this.number = number;
            this.email = email;
            this.password = password;


        }

        public int getId() {
            return user_id;
        }

        public void setId(int user_id) {
            this.user_id = user_id;
        }
        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
        public String getNumber() {
            return number;
        }

        public void setNumber(String number) {
            this.number = number;
        }
        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }
        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }
        @Override
        public String toString() {
            return "User{" +
                    "user_id=" + user_id +
                    ", name='" + name + '\'' +
                    ", number='" + number + '\'' +
                    ", email='" + email + '\'' +
                    '}';
        }

        }
}
