# This migration comes from artfully_ose_engine (originally 20140114212127)
class AddSendEmailToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :send_email, :boolean, :default => true
  end
end
