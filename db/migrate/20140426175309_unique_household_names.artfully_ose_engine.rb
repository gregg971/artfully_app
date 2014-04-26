# This migration comes from artfully_ose_engine (originally 20131025180139)
class UniqueHouseholdNames < ActiveRecord::Migration
  def up
    change_column :households, :name, :string, :unique => true
  end

  def down
  end
end
