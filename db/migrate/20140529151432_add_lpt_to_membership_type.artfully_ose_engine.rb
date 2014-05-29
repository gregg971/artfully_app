# This migration comes from artfully_ose_engine (originally 20140506155241)
class AddLptToMembershipType < ActiveRecord::Migration
  def change
    add_column :membership_types, :limit_per_transaction, :integer, :default => 1
  end
end
