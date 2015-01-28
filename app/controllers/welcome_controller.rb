class WelcomeController < ApplicationController
  def index
  end

  def create
    @output = params[:address]
    require 'pry' ; binding.pry
    redirect_to "/"
  end
end
