# This migration comes from artfully_ose_engine (originally 20150420143707)
class AddIndexesToDonations < ActiveRecord::Migration
  def change
    add_index :donations, :order_id
    add_index :donations, :organization_id
    add_index :donations, :cart_id
  end
end
