# This migration comes from artfully_ose_engine (originally 20150325173053)
class AddPassIndexToTickets < ActiveRecord::Migration
  def change
    add_index :tickets, :pass_id
  end
end
