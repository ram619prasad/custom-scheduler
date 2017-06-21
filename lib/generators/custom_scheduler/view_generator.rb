require 'rails/generators'

module CustomScheduler
  module Generators
    class ViewGenerator < Rails::Generators::Base

      desc "Generates the necessaray view files"
      source_root File.expand_path('../../templates/views/configured_schedulers', __FILE__)

      def generate_controller
        template "index.html.erb", "#{Rails.root}/app/views/configured_schedulers/index.html.erb"
      end

    end
  end
end
