# This migration comes from artfully_ose_engine (originally 20140723133850)
class RemoveCampaignIdAndApealIdFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :campaign_id
    remove_column :orders, :appeal_id
  end

  def down
    add_column :orders, :campaign_id, :integer, :after => :organization_id
    add_column :orders, :appeal_id, :integer, :after => :campaign_id
  end
end
