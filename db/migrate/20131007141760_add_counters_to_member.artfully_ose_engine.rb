# This migration comes from artfully_ose_engine (originally 20131007141421)
class AddCountersToMember < ActiveRecord::Migration
  def change
    add_column :members, :current_memberships_count,  :integer, :default => 0
    add_column :members, :lapsed_memberships_count,   :integer, :default => 0
    add_column :members, :past_memberships_count,     :integer, :default => 0
  end
end
