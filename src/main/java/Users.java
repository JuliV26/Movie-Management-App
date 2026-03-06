import jakarta.persistence.*;
public class Users {


    @Entity
    @Table(name="users")
    public class User {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;

        private String name;
        private String number;
        private String email;
        private String password;

    }
}
