class MoviesController < ApplicationController
  def index

    if params[:q]
      @movies = Movie.search params[:q]
    else
      @movies = Movie.all
    end

    respond_to do |format|
      format.html #{ index.html.erb }
      format.json { render :json => @movies }
    end
  end
end

