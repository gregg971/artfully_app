# This migration comes from artfully_ose_engine (originally 20150922155253)
class AddAdvancedSearchSegmentIdToMembershipTypes < ActiveRecord::Migration
  def change
    add_column :membership_types, :advanced_search_segment_id, :integer
  end
end
