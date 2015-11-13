# This migration comes from artfully_ose_engine (originally 20150602204548)
class AddIndexOnDeletedAt < ActiveRecord::Migration
  def change
    add_index :actions, :deleted_at
  end
end
