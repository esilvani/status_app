class FriendsController < ApplicationController

  before_action :authenticate_person!

  def follow
    person = Person.find (params[:id])
    person.followers << current_person
    redirect_to statuses_path
  end

  def index
    @people = Person.all
  end




end
