class TeamsController < ApplicationController

  def index
    @teams = Team.find_all
  end

  def show
    # @team = Team.find(params[:id])
  end
end
