# frozen_string_literal: true

class SquadsController < ApplicationController
  def index
    @players, @squads = Squad.generate_squads(params[:number_of_squads].to_i)
  end
end
