class MoviesController < ApplicationController
  def index
    render({:template => "movie_templates/index.html.erb"})
  end

  def movie_details
    @movie_id = params.fetch("movie_id")
 
    @specific_movie = Movie.where({:id=>@movie_id}).first

    # @filmography = Movie.where({:director_id=>@director_hash})

    render({:template=>"movie_templates/movie_details.html.erb"})
  end 
end 
