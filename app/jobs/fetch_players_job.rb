# frozen_string_literal: true

class FetchPlayersJob < ApplicationJob
  queue_as :default

  def perform
    require 'net/http'
    require 'json'

    # Remove all current players for a fresh start
    Player.destroy_all

    # TODO: We can change this piece of code to switch this over to a real API
    # Uncomment the following and remove the current read from file
    # url = "https://api_goes_here.com/players.json"
    # data = Net::HTTP.get(URI.parse(url))
    data = File.read('players.json')

    players = JSON.parse(data)

    players['players'].each do |player|
      new_player = Player.new(
        first_name: player['firstName'],
        last_name: player['lastName']
      )
      player['skills'].each do |skill|
        new_player.assign_attributes(skill['type'].downcase => skill['rating'])
      end

      new_player.save!
    end
  end
end
