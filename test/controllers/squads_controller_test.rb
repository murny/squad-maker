# frozen_string_literal: true

require 'test_helper'

class SquadsControllerTest < ActionDispatch::IntegrationTest
  test 'should show squads maker' do
    get root_url
    assert_response :success
  end

  test 'should show squads maker when number of squads is given' do
    get root_url, params: { number_of_squads: 2 }
    assert_response :success
  end
end
