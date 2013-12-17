class ReviewsController < ApplicationController
	before_action :set_movie

  def index
    @reviews = @movie.reviews
  end

  def new
  	@review = @movie.reviews.new
  end

  def create
  	@review = @movie.reviews.new(review_params)
    if @review.save
      redirect_to movie_reviews_path(@movie),
                  notice: "Thanks for your review!"
    else
      render :new
    end
  end

  def destroy
    @review = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_url, alert: 'Movie was successfully deleted!'
  end


  private
  def review_params
    params.require(:review).permit(:name, :stars, :comment)
  end

  def set_movie
  	@movie = Movie.find(params[:movie_id])
  end
end
