# frozen_string_literal: true

require 'test_helper'

class FetchPlayersJobTest < ActiveJob::TestCase
  test 'that fetch players job pulls new players from API' do
    # We currently have 4 players seeded
    assert_equal Player.all.count, 4

    FetchPlayersJob.perform_now

    # Current players.json file holds 40 players, so we should also have 40 now
    assert_equal Player.all.count, 40
  end
end
