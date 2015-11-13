# This migration comes from artfully_ose_engine (originally 20150331084817)
class AddCreatorIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :creator_id, :integer
    add_index :orders, :creator_id
  end

  def self.down
    remove_column :orders, :creator_id
    remove_index :orders, :creator_id
  end
end
