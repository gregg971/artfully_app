# This migration comes from artfully_ose_engine (originally 20150711143014)
class AddReceiveDoorListToUserMemberships < ActiveRecord::Migration
  def self.up
    add_column :user_memberships, :receive_door_list, :boolean, :default => false
    execute "UPDATE user_memberships SET receive_door_list = true WHERE organization_administrator = true"
  end

  def self.down
    remove_column :user_memberships, :receive_door_list
  end
end
