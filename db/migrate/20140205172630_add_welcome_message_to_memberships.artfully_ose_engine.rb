# This migration comes from artfully_ose_engine (originally 20140114011856)
class AddWelcomeMessageToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :welcome_message, :text, :default => nil
  end
end
