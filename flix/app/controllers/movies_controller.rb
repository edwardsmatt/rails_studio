class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    movie_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def new
    @movie = Movie.new
  end

  def create
    movie_params = params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross)
    @movie = Movie.new(movie_params)
    @movie.save(movie_params)
    redirect_to movie_path(@movie)
  end



  private
end
