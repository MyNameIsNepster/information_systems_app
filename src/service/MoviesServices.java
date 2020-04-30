package service;


import dto.DTOMovies;
import dto.GenRentingByClient;
import model.MoviesEntity;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import java.util.ArrayList;

@ManagedBean(name="moviesServices")
@ApplicationScoped
public class MoviesServices {
    private ArrayList<model.MoviesEntity> movies;

    public ArrayList<model.MoviesEntity> getMovies(){
        movies = (ArrayList<model.MoviesEntity>) dto.DTOMovies.getAllMovie();
//        System.out.println("MoviesService.createMovies"+movies.toString());
//        System.out.println("Generated data: " + GenRentingByClient.genRentings().toString());
        return movies;
    }
    public void addMovie(model.MoviesEntity movie){
        System.out.println("Debug: Movies Services addMovie: " + movie.toString());
        dto.DTOMovies.addMovieToDatabase(movie);
    }
    public void deleteMovie(model.MoviesEntity movie){
        dto.DTOMovies.deleteMovie(movie);
    }

    public void editMovie(MoviesEntity movie){
        DTOMovies.editMovie(movie);
    }
}
