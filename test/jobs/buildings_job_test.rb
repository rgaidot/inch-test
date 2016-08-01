require 'test_helper'

class BuildingsJobTest < ActiveJob::TestCase
  test 'should be insert all building from csv file' do
    Building.delete_all
    perform_enqueued_jobs do
      BuildingsJob.perform_now './test/fixtures/files/buildings.csv'
    end
    assert_equal 2, Building.count

    b = Building.last
    assert_equal '40 Rue René Clair', b.address
    assert_equal '75018', b.zip_code
    assert_equal 'Paris', b.city
    assert_equal 'France', b.country
    assert_equal 'Martin Faure', b.manager_name
  end
end
