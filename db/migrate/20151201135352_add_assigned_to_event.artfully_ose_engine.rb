# This migration comes from artfully_ose_engine (originally 20140829143520)
class AddAssignedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :assigned, :boolean, :default => false
  end
end
