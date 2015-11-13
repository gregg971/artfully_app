# This migration comes from artfully_ose_engine (originally 20150814075653)
class AddMaidenNameToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :maiden_name, :string
  end

  def self.down
    remove_column :people, :maiden_name
  end
end
