# This migration comes from artfully_ose_engine (originally 20131013144010)
class AddTypeToMembershipType < ActiveRecord::Migration
  def change
    add_column :membership_types, :type, :string, :default => "SeasonalMembershipType"
  end
end
