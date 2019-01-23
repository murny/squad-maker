# frozen_string_literal: true

require 'test_helper'

class SquadsControllerTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test 'create request should queue fetch_players_job' do
    assert_enqueued_jobs 1 do
      post players_url
    end

    assert_redirected_to root_url
    assert_equal 'Reloading the players from API, this may take a few seconds. Try refreshing the page', flash[:notice]
  end
end
