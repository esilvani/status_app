class WelcomeController < ApplicationController
  def index
    if person_signed_in?
      @status = current_person.statuses.build
      render 'statuses/new'
    else
      render
    end
  end
end
