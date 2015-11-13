# This migration comes from artfully_ose_engine (originally 20141204172658)
class AddHideOnRecentActivityToActions < ActiveRecord::Migration
  def change
    add_column :actions, :hide_on_recent_activity, :boolean, :default => false
  end
end
