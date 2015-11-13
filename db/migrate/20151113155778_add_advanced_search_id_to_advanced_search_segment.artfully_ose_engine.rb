# This migration comes from artfully_ose_engine (originally 20150520210658)
class AddAdvancedSearchIdToAdvancedSearchSegment < ActiveRecord::Migration
  def change
    add_column :advanced_search_segments, :advanced_search_id, :integer
  end
end
