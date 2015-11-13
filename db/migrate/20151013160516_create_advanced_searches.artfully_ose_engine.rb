# This migration comes from artfully_ose_engine (originally 20150318171857)
class CreateAdvancedSearches < ActiveRecord::Migration
  def self.up
    create_table :advanced_searches do |t|
      t.integer :organization_id
      t.integer :user_id
      t.text :search_parameters
      t.timestamps
    end

    add_index :advanced_searches, [:organization_id, :user_id]
  end

  def self.down
    drop_table :advanced_searches
  end
end
