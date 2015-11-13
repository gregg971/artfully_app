# This migration comes from artfully_ose_engine (originally 20150513154513)
class AddNameToAdvancedSearch < ActiveRecord::Migration
  def change
    add_column :advanced_searches, :name, :string
  end
end
