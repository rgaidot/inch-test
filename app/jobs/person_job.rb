class PersonJob < ApplicationJob
  queue_as :default

  def perform(row)
    logger.info "Find or create person (#{row[1]} #{row[2]})"

    Person.find_or_create_by id: row[0].to_i do |building|
      building.firstname = row[1]
      building.lastname = row[2]
      building.home_phone_number = row[3].to_i
      building.mobile_phone_number = row[4].to_i
      building.email = row[5]
      building.address = row[6]
    end
  end
end
