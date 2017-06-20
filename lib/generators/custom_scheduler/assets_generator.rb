require 'rails/generators'

module CustomScheduler
  module Generators
    class AssetsGenerator < Rails::Generators::Base

      desc "Generates necessary bootstrap css an js files"
      source_root File.expand_path('../../templates/assets', __FILE__)

      def create_bootstrap_js_file
        template "bootstrap.min.js", "#{Rails.root}/app/assets/javascripts/bootstrap.min.js"
      end

      def create_bootstrap_css_file
        template "bootstrap.min.css", "#{Rails.root}/app/assets/stylesheets/bootstrap.min.css"
      end

    end
  end
end
