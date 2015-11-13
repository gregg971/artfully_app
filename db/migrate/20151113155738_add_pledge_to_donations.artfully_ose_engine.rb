# This migration comes from artfully_ose_engine (originally 20140903140113)
class AddPledgeToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :pledge, :boolean, :default => false
  end

  def self.down
    remove_column :donations, :pledge
  end
end
