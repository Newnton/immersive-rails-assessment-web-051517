class GuestsController < ApplicationController
  before_action :verify
  
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end
end
