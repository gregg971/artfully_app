# This migration comes from artfully_ose_engine (originally 20150414193419)
class AddIndexToPhone < ActiveRecord::Migration
  def change
    add_index :phones, :person_id
  end
end
