class PlayersController < ApplicationController

  def index
    @players = Player.find_all
  end

  def show
  end
end
