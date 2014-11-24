# This migration comes from artfully_ose_engine (originally 20131210212342)
class AddShowFeeToMemberhsipType < ActiveRecord::Migration
  def change
    add_column :membership_types, :hide_fee, :boolean, :default => false
  end
end
