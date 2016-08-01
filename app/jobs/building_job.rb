class BuildingJob < ApplicationJob
  queue_as :default

  def perform(row)
    logger.info "Find or create building (#{row[1]} #{row[3]})"

    Building.find_or_create_by id: row[0].to_i do |building|
      building.address = row[1]
      building.zip_code = row[2]
      building.city = row[3]
      building.country = row[4]
      building.manager_name = row[5]
    end
  end
end
