require 'rails/generators'

module CustomScheduler
  module Generators
    class ViewGenerator < Rails::Generators::Base

      desc "Generates configured_schedulers_controller.rb"
      source_root File.expand_path('../../templates/views/configured_schedulers', __FILE__)

      def generate_controller
        template "index.html", "#{Rails.root}/app/views/configured_schedulers/index.html"
      end

    end
  end
end
