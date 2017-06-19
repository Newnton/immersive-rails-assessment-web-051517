class EpisodesController < ApplicationController
  before_action :verify
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guests = (Appearance.all.where("episode_id = ?", params[:id])).map{ |guest| guest.guest }
  end

end
