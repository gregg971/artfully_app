# This migration comes from artfully_ose_engine (originally 20141001193242)
class AssociateHoldWithPerson < ActiveRecord::Migration
  def change
    add_column :seats, :held_for_id, :integer, :default => nil
    add_index  :seats, :held_for_id 
  end
end
