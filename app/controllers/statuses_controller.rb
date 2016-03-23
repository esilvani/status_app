class StatusesController < ApplicationController
  def index
    if person_signed_in?
      @followed_people = current_person.followed_people
    else
      render 'welcome'
    end
  end

  def new
    @status = current_person.statuses.build
  end

  def create
    @status = current_person.statuses.build(safe_status_params)

    if @status.save
      redirect_to statuses_path
    else
      render 'new'
    end
  end

  private
  def safe_status_params
    params.require(:text).permit(:text)
  end
end
