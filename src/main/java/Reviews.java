import jakarta.persistence.*;
public class Reviews {
    @Entity
    @Table(name="reviews")
    public class Review {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;

        private double rating;
        private String review;

    }
}
