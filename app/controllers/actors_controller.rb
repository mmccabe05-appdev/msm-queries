class ActorsController < ApplicationController
  def index
    render({:template => "actor_templates/index.html.erb"})
  end

  def actor_details
    @actor_id = params.fetch("actor_id")
 
    @specific_actor = Actor.where({:id=>@actor_id}).first

    @filmography = Character.where({:actor_id=>@actor_id})


    render({:template=>"actor_templates/actor_details.html.erb"})
  end 
end 
