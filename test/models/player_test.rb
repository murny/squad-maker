# frozen_string_literal: true

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = players(:one)
  end

  test 'valid player' do
    assert @player.valid?
  end

  test 'invalid without first name' do
    @player.first_name = nil
    assert_not @player.valid?
    assert_equal @player.errors[:first_name].first, "can't be blank"
  end

  test 'invalid without last name' do
    @player.last_name = nil
    assert_not @player.valid?
    assert_equal @player.errors[:last_name].first, "can't be blank"
  end

  test 'invalid without skating skill' do
    @player.skating = nil
    assert_not @player.valid?
    assert_equal @player.errors[:skating].first, "can't be blank"
  end

  test 'invalid without shooting skill' do
    @player.shooting = nil
    assert_not @player.valid?
    assert_equal @player.errors[:shooting].first, "can't be blank"
  end

  test 'invalid without checking skill' do
    @player.checking = nil
    assert_not @player.valid?
    assert_equal @player.errors[:checking].first, "can't be blank"
  end

  test 'average skill returns proper value' do
    average_skill = (@player.skating + @player.shooting + @player.checking) / 3
    assert_equal @player.average_skill, average_skill
  end

  test 'full name returns proper value' do
    full_name = "#{@player.first_name} #{@player.last_name}"
    assert_equal @player.full_name, full_name
  end
end
