class MoviesController < ApplicationController
  def index
	  @movies = Movie.order("created_at DESC")
  end

  def search
  	@movies = Movie.search(params[:search]).order("created_at DESC")
  end
end
