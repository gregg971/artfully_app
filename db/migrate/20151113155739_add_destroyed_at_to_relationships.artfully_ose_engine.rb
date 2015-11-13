# This migration comes from artfully_ose_engine (originally 20140904183953)
class AddDestroyedAtToRelationships < ActiveRecord::Migration
  def change
    change_table :relationships do |t|
      t.datetime :deleted_at
    end
  end
end
