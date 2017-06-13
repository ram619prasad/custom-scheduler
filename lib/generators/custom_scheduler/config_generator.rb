require 'rails/generators'

module CustomScheduler
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc "Creates a CustomScheduler configuration file"

      def generate_configuration
        copy_file "custom_scheduler_config.yml", "#{Rails.root}/config/custom_scheduler_config.yml"
      end
    end
  end
end
