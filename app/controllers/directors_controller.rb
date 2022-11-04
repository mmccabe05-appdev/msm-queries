class DirectorsController < ApplicationController
 
  def index
    render({:template => "director_templates/index.html.erb"})
  end

  def wisest
    @directors_array = Director.where.not({:dob=>nil}).order({:dob=>"asc"})
    @oldest_director_name = @directors_array.at(0)

    render({:template=>"director_templates/eldest.html.erb"})
  end
  def newest
    @directors_array = Director.where.not({:dob=>nil}).order({:dob=>"desc"})
    @youngest_director_name = @directors_array.at(0)

    render({:template=>"director_templates/youngest.html.erb"})
  end

  def director_details
    @director_id = params.fetch(:director_id)

    @director_hash = Director.all.fetch(@director_id)

    render({:template=>"director_templates/director_details.html.erb"})
  end 
end
