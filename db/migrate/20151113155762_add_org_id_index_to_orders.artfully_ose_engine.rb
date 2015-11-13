# This migration comes from artfully_ose_engine (originally 20150319185940)
class AddOrgIdIndexToOrders < ActiveRecord::Migration
  def change
    add_index :orders, :organization_id
  end
end
