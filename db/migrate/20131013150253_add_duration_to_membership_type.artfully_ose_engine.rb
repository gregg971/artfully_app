# This migration comes from artfully_ose_engine (originally 20131013150230)
class AddDurationToMembershipType < ActiveRecord::Migration
  def change
    add_column :membership_types, :duration, :integer
    add_column :membership_types, :period, :string
  end
end