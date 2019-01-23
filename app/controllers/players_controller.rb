# frozen_string_literal: true

class PlayersController < ApplicationController
  def create
    FetchPlayersJob.perform_later
    redirect_to root_path,
                notice: 'Reloading the players from API, this may take a few seconds. Try refreshing the page'
  end
end
