class PeopleController < ApplicationController
  before_filter :authenticate_person!

  def index
    @people = Person.all
  end

  def follow
    person = Person.find(params[:id])
    @friendship = Friend.new following: person, follower: current_person
    @friendship.save

    redirect_to people_path
  end


  def unfollow
    person = Person.find(params[:id])
    @friendship = Friend.find_by following: person, follower: current_person
    @friendship.destroy

    redirect_to people_path
  end
end
