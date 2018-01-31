class LinksController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    current_user.applications << Application.find(params[:application_id])
    redirect_to root_url
  end

  def destroy
    current_user.links.destroy(params[:id])
    redirect_to root_url
  end
end
