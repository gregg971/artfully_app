# This migration comes from artfully_ose_engine (originally 20150521183507)
class AddOrganizationIdToAdvancedSearchSegment < ActiveRecord::Migration
  def change
    add_column :advanced_search_segments, :organization_id, :integer
  end
end
