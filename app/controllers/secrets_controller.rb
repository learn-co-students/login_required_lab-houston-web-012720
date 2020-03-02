
class SecretsController < ApplicationController

  before_action :authorized

  def show
  end

  def authorized
    redirect_to '/login' unless session.include? :name
  end

end
