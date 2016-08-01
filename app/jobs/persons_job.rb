require 'csv'

class PersonsJob < ApplicationJob
  queue_as :default

  def perform(file_path)
    logger.info "loading file: #{file_path}"

    CSV.foreach(file_path, headers: true) do |row|
      PersonJob.perform_now row
    end
  end
end
