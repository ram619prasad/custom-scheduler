class CreateMasterConfiguredSchedulers < ActiveRecord::Migration
  def change
    create_table :master_configured_schedulers do |t|
      t.string :job_name
      t.string :scheduled_at
      t.boolean :skip

      t.timestamps
    end
  end
end
