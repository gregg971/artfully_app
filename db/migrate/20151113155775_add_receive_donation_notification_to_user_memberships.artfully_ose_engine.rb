# This migration comes from artfully_ose_engine (originally 20150518131946)
class AddReceiveDonationNotificationToUserMemberships < ActiveRecord::Migration
  def self.up
    add_column :user_memberships, :receive_donation_notification, :boolean, :default => false
  end

  def self.down
    remove_column :user_memberships, :receive_donation_notification
  end
end
