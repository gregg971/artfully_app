# This migration comes from artfully_ose_engine (originally 20130531160801)
class DropPriceFromTicket < ActiveRecord::Migration
  def change
    remove_column :tickets, :price
  end
end
