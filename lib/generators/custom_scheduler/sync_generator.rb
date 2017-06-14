require 'rails/generators'

module CustomScheduler
  module Generators
    class SyncGenerator < Rails::Generators::Base
      desc "For syncing all the common jobs to master_configured_scheduler table."

      def sync_default_jobs
        DEFAULT_CONFIGURED_JOBS["defaults"]["jobs"].each do |key, value|
          MasterConfiguredScheduler.where(job_name: key).first_or_initialize.tap do |job|
            job.scheduled_at = value
            job.save
          end
        end
      end

    end
  end
end
