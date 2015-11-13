# This migration comes from artfully_ose_engine (originally 20150414193646)
class AddIndexToTaggings < ActiveRecord::Migration
  def change
    add_index :taggings, ["taggable_type", "taggable_id", "context"]
  end
end
