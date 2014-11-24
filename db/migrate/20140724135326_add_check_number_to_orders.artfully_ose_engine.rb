# This migration comes from artfully_ose_engine (originally 20140507201048)
class AddCheckNumberToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :check_number, :string
  end
end
