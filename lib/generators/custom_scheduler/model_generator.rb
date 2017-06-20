require 'rails/generators'
require 'rails/generators/migration'


module CustomScheduler
  module Generators
    class ModelGenerator < Rails::Generators::Base

      desc "Creates a CustomScheduler model and a aaditya migration file."

      include Rails::Generators::Migration
      source_root File.expand_path('../../templates', __FILE__)

      def generate_configured_scheduler_model
        template "configured_scheduler.rb", "#{Rails.root}/app/models/configured_scheduler.rb"
      end

      def generate_master_configured_scheduler_model
        template "master_configured_scheduler.rb", "#{Rails.root}/app/models/master_configured_scheduler.rb"
      end

      def generate_master_configured_schedulers_migration
        migration_template "create_master_configured_schedulers_migration.rb", "#{Rails.root}/db/migrate/create_master_configured_schedulers.rb"
      end

      def generate_configured_schedulers_migration
        sleep(3)
        migration_template "create_configured_schedulers_migration.rb", "#{Rails.root}/db/migrate/create_configured_schedulers.rb"
      end

      def migrate
        rake "db:migrate"
      end

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end
