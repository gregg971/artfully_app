# This migration comes from artfully_ose_engine (originally 20150113091434)
class CreateBudgetRestrictions < ActiveRecord::Migration
  def self.up
    create_table :budget_restrictions do |t|
      t.belongs_to :organization
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :budget_restrictions
  end
end
