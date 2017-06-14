class MasterConfiguredScheduler < ActiveRecord::Base
  attr_accessible :job_name, :scheduled_at, :skip
end
