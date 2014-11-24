# This migration comes from artfully_ose_engine (originally 20140415212841)
class AddMinMaxStartDatesToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :min_membership_start_date, :datetime
    add_column :searches, :max_membership_start_date, :datetime
  end
end
