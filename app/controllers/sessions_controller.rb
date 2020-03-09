class SessionsController < ApplicationController
  def new
    # nothing to do here!
  end

  def create
    session[:name] = params[:name]
    redirect_to login_path
  end

  def destroy
    session.delete :name
  end
end