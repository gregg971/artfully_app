# This migration comes from artfully_ose_engine (originally 20140210154723)
class AddCachedStats < ActiveRecord::Migration
  def change
    add_column :shows, :cached_stats, :text
  end
end
