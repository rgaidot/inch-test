require 'test_helper'

class PersonsJobTest < ActiveJob::TestCase
  test 'should be insert all person from csv file' do
    Person.delete_all
    perform_enqueued_jobs do
      PersonsJob.perform_now './test/fixtures/files/people.csv'
    end
    assert_equal 2, Person.count

    p = Person.first
    assert_equal 'Henri', p.firstname
    assert_equal 'Dupont', p.lastname
    assert_equal '10 Rue La bruyère', p.address
  end
end
