# This migration comes from artfully_ose_engine (originally 20151112174723)
class IndexListGroupings < ActiveRecord::Migration
  def change
    add_index :list_groupings, :subscribed_list_id
  end
end
