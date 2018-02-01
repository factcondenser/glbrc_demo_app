class LinksController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    current_user.add_to_home(params[:app_id])
    redirect_to root_url
  end

  def destroy
    current_user.remove_from_home(params[:id])
    redirect_to root_url
  end
end
