# This migration comes from artfully_ose_engine (originally 20131029173612)
class AddSalesStartToMembershipTyp < ActiveRecord::Migration
  def change
    add_column :membership_types, :sales_start_at, :datetime
    add_column :membership_types, :sales_end_at, :datetime
  end
end
