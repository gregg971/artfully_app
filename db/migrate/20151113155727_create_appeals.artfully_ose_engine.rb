# This migration comes from artfully_ose_engine (originally 20140627120214)
class CreateAppeals < ActiveRecord::Migration
  def self.up
    create_table :appeals do |t|
      t.belongs_to :campaign
      t.belongs_to :organization
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :channel
      t.text :materials
      t.string :status

      t.integer :raised, :null => false, :default => 0

      t.timestamps
    end

    add_index :appeals, :campaign_id
    add_index :appeals, :organization_id
    add_index :appeals, :starts_at
    add_index :appeals, :ends_at
    add_index :appeals, :status
  end

  def self.down
    drop_table :appeals
  end
end
