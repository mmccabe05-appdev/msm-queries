class DirectorsController < ApplicationController

  def index
    render({:template => "director_templates/index.html.erb"})
  end

  def eldest
    @directors_array = Director.all.order({:dob=>"asc"})
    @oldest_director_name = Director.all.last
    render({:template=>"director_templates/eldest.html.erb"})
  end

  def director_details
    @director_id = params.fetch(:director_id)

    @director_hash = Director.all.fetch(@director_id)

    render({:template=>"director_templates/director_details.html.erb"})
  end 
end
