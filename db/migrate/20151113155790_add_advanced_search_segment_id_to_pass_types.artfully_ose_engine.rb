# This migration comes from artfully_ose_engine (originally 20150922155308)
class AddAdvancedSearchSegmentIdToPassTypes < ActiveRecord::Migration
  def change
    add_column :pass_types, :advanced_search_segment_id, :integer
  end
end
