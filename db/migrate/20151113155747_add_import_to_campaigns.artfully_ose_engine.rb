# This migration comes from artfully_ose_engine (originally 20141127135743)
class AddImportToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :import_id, :integer
    add_column :appeals, :import_id, :integer
  end
end
