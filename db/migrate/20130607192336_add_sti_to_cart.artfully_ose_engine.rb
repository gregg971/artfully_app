# This migration comes from artfully_ose_engine (originally 20130521185848)
#
# Need to add reseller_id to cart. AddStiToCart is so named so Artful.ly ignores this migration
#
class AddStiToCart < ActiveRecord::Migration
  def self.up
    add_column :carts, :reseller_id, :string
  end

  def self.down
    remove_column :carts, :reseller_id
  end
end