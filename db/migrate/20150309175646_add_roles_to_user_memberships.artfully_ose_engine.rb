# This migration comes from artfully_ose_engine (originally 20150219153827)
class AddRolesToUserMemberships < ActiveRecord::Migration
  def change
    add_column :user_memberships, :organization_administrator, :boolean, :default => false
    add_column :user_memberships, :manager, :boolean, :default => false
    add_column :user_memberships, :general_associate, :boolean, :default => false
    add_column :user_memberships, :box_office_associate, :boolean, :default => false

    UserMembership.where(:owner => true).update_all(:organization_administrator => true)
    UserMembership.where(:owner => false).update_all(:manager => true)

    remove_column :user_memberships, :owner
  end
end