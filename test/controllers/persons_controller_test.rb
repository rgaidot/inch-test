require 'test_helper'

class PersonsControllerTest < ActionDispatch::IntegrationTest
  test 'should be return all person' do
    get persons_url, as: :json

    assert_response :success
    assert_equal(Person.first.address, response.parsed_body[0]['address'])
  end
end
