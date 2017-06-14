require 'rails/generators'

module CustomScheduler
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc "Creates a CustomScheduler configuration file"

      def generate_configuration
        template "configured_scheduler.yml", "#{Rails.root}/config/configured_scheduler.yml"
        template "configured_scheduler_initializer.rb", "#{Rails.root}/config/initializers/configured_scheduler_initializer.rb"
      end
    end
  end
end
