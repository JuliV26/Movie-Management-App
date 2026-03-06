import jakarta.persistence.*;

@Entity
@Table(name="movies")
public class Movie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;
    private String genre;
    private int year;

    public Movie(){}

    public Movie(String title,String genre,int year){
        this.title = title;
        this.genre = genre;
        this.year = year;
    }

}