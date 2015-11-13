# This migration comes from artfully_ose_engine (originally 20141007114614)
class AddOrderIdToDonations < ActiveRecord::Migration
  def self.up
    add_column :donations, :order_id, :integer, :after => :appeal_id
    execute "UPDATE donations d SET order_id = (" +
                "SELECT order_id FROM items " +
                "WHERE product_type = 'Donation' " +
                "AND state != 'refund' " +
                "AND deleted_at IS NULL " +
                "AND product_id = d.id)"
  end

  def self.down
    remove_column :donations, :order_id
  end
end
