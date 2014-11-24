# This migration comes from artfully_ose_engine (originally 20131127162818)
class AddBuyerIdIndexToTickets < ActiveRecord::Migration
  def change
    add_index :tickets, :buyer_id
  end
end
