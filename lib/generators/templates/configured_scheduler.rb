class ConfiguredScheduler < ActiveRecord::Base
  attr_accessible :account_id, :job_name, :scheduled_at, :skip
end
