# This migration comes from artfully_ose_engine (originally 20150129091354)
class AddCampaignToSearches < ActiveRecord::Migration
  def self.up
    add_column :searches, :campaign_id, :integer, :after => :max_donations_date
    add_column :searches, :appeal_id, :integer, :after => :campaign_id
    add_column :searches, :gift_type, :string, :after => :appeal_id
  end

  def self.down
    remove_column :searches, :campaign_id
    remove_column :searches, :appeal_id
    remove_column :searches, :gift_type
  end
end
