# This migration comes from artfully_ose_engine (originally 20150408125600)
class AddIndexToImports < ActiveRecord::Migration
  def change
    add_index :imports, :organization_id
  end
end
