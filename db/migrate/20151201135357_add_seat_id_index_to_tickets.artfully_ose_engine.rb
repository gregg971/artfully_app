# This migration comes from artfully_ose_engine (originally 20141001140737)
class AddSeatIdIndexToTickets < ActiveRecord::Migration
  def change
    add_index :tickets, :seat_id
  end
end
