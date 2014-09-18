class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @user = User.find(session[:id])
  end

  def create
    @user = User.find(session[:id])
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice]= "Movie has been added."
      redirect_to movies_path
    else
      render 'new'
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path(current_user)
  end

private
  def movie_params
    params.require(:movie).permit(:name, :genre, :release_date, :cast, :user_id, :image).merge(:user_id => current_user.id)
  end
end
