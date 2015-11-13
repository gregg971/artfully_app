# This migration comes from artfully_ose_engine (originally 20150415113013)
class AddNicknameToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :nickname,     :string
    add_column :people, :listing_name, :string
  end

  def self.down
    remove_column :people, :nickname
    remove_column :people, :listing_name
  end
end
