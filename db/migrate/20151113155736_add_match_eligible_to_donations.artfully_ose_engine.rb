# This migration comes from artfully_ose_engine (originally 20140730141515)
class AddMatchEligibleToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :match_eligible, :boolean, :default => false
    add_column :donations, :matcher, :integer
    add_column :donations, :eligible_amount, :integer
    add_column :donations, :ratio, :integer
  end

  def self.down
    remove_column :donations, :match_eligible
    remove_column :donations, :matcher
    remove_column :donations, :eligible_amount
    remove_column :donations, :ratio
  end
end
