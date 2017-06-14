require 'rails/generators'

module CustomScheduler
  module Generators
    class ControllerGenerator < Rails::Generators::Base

      desc "Generates configured_schedulers_controller.rb"
      source_root File.expand_path('../../templates', __FILE__)

      def generate_controller
        template "configured_schedulers_controller.rb", "#{Rails.root}/app/controllers/configured_schedulers_controller.rb"
      end

    end
  end
end
