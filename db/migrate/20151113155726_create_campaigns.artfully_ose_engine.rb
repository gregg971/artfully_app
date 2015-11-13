# This migration comes from artfully_ose_engine (originally 20140623131025)
class CreateCampaigns < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.belongs_to :organization
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :status, :null => false, :default => 'active'
      t.text :notes

      t.integer :goal, :null => false, :default => 0
      t.integer :raised, :null => false, :default => 0
      t.string :restriction

      t.timestamps
    end

    add_index :campaigns, :organization_id
    add_index :campaigns, :starts_at
    add_index :campaigns, :ends_at
    add_index :campaigns, :status
  end

  def self.down
    drop_table :campaigns
  end
end
