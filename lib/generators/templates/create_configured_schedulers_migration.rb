class CreateConfiguredSchedulers < ActiveRecord::Migration
  def change
    create_table :configured_schedulers do |t|
      t.integer :account_id
      t.string :job_name
      t.string :scheduled_at
      t.boolean :skip

      t.timestamps
    end
  end
end
