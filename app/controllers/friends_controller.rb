class FriendsController < ApplicationController

  before_action :authenticate_person!


  def index
    @people = Person.all
  end
end
