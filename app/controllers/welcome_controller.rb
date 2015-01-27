class WelcomeController < ApplicationController
  def index
  end

  def create
    @output = params[:address]
    redirect_to "/"
  end
end
