# This migration comes from artfully_ose_engine (originally 20141027191307)
class DefaultOverwriteMemberAddressesToFalse < ActiveRecord::Migration
  def change
    change_column :households, :overwrite_member_addresses, :boolean, :default => false, :null => false
  end
end
