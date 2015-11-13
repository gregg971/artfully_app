# This migration comes from artfully_ose_engine (originally 20150113091503)
class AddBudgetRestrictionToCampaigns < ActiveRecord::Migration
  def self.up
    remove_column :campaigns, :restriction
    add_column :campaigns, :budget_restriction_id, :integer, :after => :raised
  end

  def self.down
    add_column :campaigns, :restriction, :string, :after => :raised
    remove_column :campaigns, :budget_restriction_id
  end

end


