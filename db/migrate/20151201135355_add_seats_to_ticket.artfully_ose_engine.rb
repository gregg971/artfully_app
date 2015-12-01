# This migration comes from artfully_ose_engine (originally 20140919152307)
class AddSeatsToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :seat_id, :integer, :default => nil
  end
end
