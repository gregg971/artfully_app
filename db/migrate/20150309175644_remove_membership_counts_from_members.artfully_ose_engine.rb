# This migration comes from artfully_ose_engine (originally 20141204211933)
class RemoveMembershipCountsFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :current_memberships_count
    remove_column :members, :lapsed_memberships_count
    remove_column :members, :past_memberships_count
  end

  def down
    add_column :members, :past_memberships_count, :integer
    add_column :members, :lapsed_memberships_count, :integer
    add_column :members, :current_memberships_count, :integer
  end
end
