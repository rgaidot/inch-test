require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module InchTest
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.api_only = true
    config.debug_exception_response_format = :api
  end
end
