class StatusesController < ApplicationController
  def index
    @followed_people = current_person.followed_people
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
    params.require(:status).permit(:text)
  end
end
