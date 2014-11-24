# This migration comes from artfully_ose_engine (originally 20140424174423)
class AddLifetimeMembershipsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :lifetime_memberships, :integer, :default => 0
  end
end
