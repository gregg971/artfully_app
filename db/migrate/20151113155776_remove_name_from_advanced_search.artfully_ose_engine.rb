# This migration comes from artfully_ose_engine (originally 20150520182350)
class RemoveNameFromAdvancedSearch < ActiveRecord::Migration
  def up
    remove_column :advanced_searches, :name
  end

  def down
    add_column :advanced_searches, :name, :string
  end
end
