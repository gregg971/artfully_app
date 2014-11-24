# This migration comes from artfully_ose_engine (originally 20140623160543)
class AddIndexToItems < ActiveRecord::Migration
  def change
    add_index :items, :product_id
    add_index :items, :product_type
    add_index :items, [:product_id, :product_type]
  end
end
