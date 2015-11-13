# This migration comes from artfully_ose_engine (originally 20150813202745)
class IndexHouseholdId < ActiveRecord::Migration
  def change
    add_index :people, :household_id
    add_index :addresses, :household_id
  end
end
