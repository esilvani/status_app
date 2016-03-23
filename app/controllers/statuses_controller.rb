class StatusesController < ApplicationController
  def index
    if person_signed_in?
      # @follower_statuses = current_person.followers.map &:status
    else
      render 'welcome'
    end
  end
end
