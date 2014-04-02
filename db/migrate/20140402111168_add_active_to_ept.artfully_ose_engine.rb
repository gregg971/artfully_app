# This migration comes from artfully_ose_engine (originally 20140328185432)
class AddActiveToEpt < ActiveRecord::Migration
  def change
    add_column :events_pass_types, :active, :boolean, :default => true
  end
end
