# This migration comes from artfully_ose_engine (originally 20130808005856)
class AddMembersOnlyToEvents < ActiveRecord::Migration
  def change
    add_column :events, :members_only, :boolean, :default => false
  end
end
