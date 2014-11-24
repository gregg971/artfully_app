# This migration comes from artfully_ose_engine (originally 20140522205554)
class AddLimitToEventsPassTypes < ActiveRecord::Migration
  def change
    add_column :events_pass_types, :limit_per_pass, :integer, :default => nil
  end
end
