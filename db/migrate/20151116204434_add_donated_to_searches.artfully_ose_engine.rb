# This migration comes from artfully_ose_engine (originally 20141009191355)
class AddDonatedToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :has_donated, :boolean, :default => true
  end
end
