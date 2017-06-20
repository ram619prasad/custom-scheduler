require 'rails/generators'

module CustomScheduler
  module Generators
    class AssetGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates/assets', __FILE__)

      desc "Generates css and js assets"

      def create_css_assets
        template "stylesheets/bootstrap.css", "#{Rails.root}/app/assets/stylesheets/bootstrap.css"
        template "stylesheets/bootstrap.min.css", "#{Rails.root}/app/assets/stylesheets/bootstrap.min.css"
      end

      def create_js_assets
        template "javascripts/bootstrap.css", "#{Rails.root}/app/assets/javascripts/bootstrap.css"
        template "javascripts/bootstrap.min.css", "#{Rails.root}/app/assets/javascripts/bootstrap.min.css"
      end
    end
  end
end
