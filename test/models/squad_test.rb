# frozen_string_literal: true

require 'test_helper'

class SquadTest < ActiveSupport::TestCase
  def setup
    @squad = Squad.new([players(:one), players(:two)])
  end

  test 'adding new players to squad' do
    new_player = players(:three)
    @squad.add_player(new_player)
    assert_includes @squad.players, new_player
  end

  test 'average_skating returns correct value' do
    average_skating = (players(:one).skating + players(:two).skating) / 2
    assert_equal @squad.average_skating, average_skating
  end

  test 'average_shooting returns correct value' do
    average_shooting = (players(:one).shooting + players(:two).shooting) / 2
    assert_equal @squad.average_shooting, average_shooting
  end

  test 'average_checking returns correct value' do
    average_checking = (players(:one).checking + players(:two).checking) / 2
    assert_equal @squad.average_checking, average_checking
  end

  test 'generate_squads create equal teams without waiting list' do
    waitlist, squads = Squad.generate_squads(2)

    # should create two even teams of 2 players each and no ones on waitlist
    assert_equal waitlist.size, 0
    assert_equal squads.size, 2
    assert_equal squads.first.players.size, 2
  end

  test 'generate_squads create equal teams with waiting list' do
    waitlist, squads = Squad.generate_squads(3)

    # should create 3 even teams of 1 players each and one player is on waitlist
    assert_equal waitlist.size, 1
    assert_equal squads.size, 3
    assert_equal squads.first.players.size, 1
  end
end
