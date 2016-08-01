require 'test_helper'

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  test 'should be return all building' do
    get buildings_url, as: :json

    assert_response :success
    assert_equal(Building.first.address, response.parsed_body[0]['address'])
  end
end
