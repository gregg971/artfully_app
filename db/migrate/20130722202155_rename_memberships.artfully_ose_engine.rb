# This migration comes from artfully_ose_engine (originally 20130311184839)
class RenameMemberships < ActiveRecord::Migration
  def change
    rename_table :memberships, :user_memberships
  end
end
