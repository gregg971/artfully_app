# This migration comes from artfully_ose_engine (originally 20131011154027)
class AddPurchasedToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :has_purchased_for, :boolean, :default => true
  end
end
