# This migration comes from artfully_ose_engine (originally 20150716000301)
class CreateJobMonitorsTable < ActiveRecord::Migration
  def change
    create_table :job_monitors do |t|
      t.integer   :organization_id,  :null => false
      t.boolean   :finished,         :default => false
      t.boolean   :failed,           :default => false
      t.datetime  :finished_at
      t.string    :file_url
      t.timestamps
    end
  end
end
