# This migration comes from artfully_ose_engine (originally 20140709151816)
class AddCampaignIdAndAppealIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :campaign_id, :integer, :after => :organization_id
    add_column :orders, :appeal_id, :integer, :after => :campaign_id

    add_index :orders, :campaign_id
    add_index :orders, :appeal_id
  end

  def self.down
    remove_column :orders, :campaign_id
    remove_column :orders, :appeal_id
  end
end
