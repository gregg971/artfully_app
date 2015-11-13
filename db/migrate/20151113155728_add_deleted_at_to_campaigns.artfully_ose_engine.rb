# This migration comes from artfully_ose_engine (originally 20140630151406)
class AddDeletedAtToCampaigns < ActiveRecord::Migration
  def self.up
    add_column :campaigns, :deleted_at, :datetime
  end

  def self.down
    remove_column :campaigns, :deleted_at
  end
end
