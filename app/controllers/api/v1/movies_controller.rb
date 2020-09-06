# app/controllers/api/v1/movies_controller.rb
module Api
  module V1
    class MoviesController < ApplicationController
      def index
        if params[:q]
          @movies = Movie.search params[:q]
        else
          @movies = Movie.all
        end

        respond_to do |format|
          format.html # index.html.erb
          format.json { render :json => @movies }
        end
      end
    end
  end
end
