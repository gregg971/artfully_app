# This migration comes from artfully_ose_engine (originally 20140702115815)
class AddCampaignIdAndAppealIdToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :campaign_id, :integer, :after => :organization_id
    add_column :donations, :appeal_id, :integer, :after => :campaign_id

    add_index :donations, :campaign_id
    add_index :donations, :appeal_id
  end

  def self.down
    remove_column :donations, :campaign_id
    remove_column :donations, :appeal_id
  end
end
