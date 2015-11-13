# This migration comes from artfully_ose_engine (originally 20150812135205)
class UpdateNotesNulls < ActiveRecord::Migration
  def change
    execute "UPDATE notes SET occurred_at = updated_at WHERE occurred_at IS NULL"
    execute "UPDATE notes n SET organization_id = (" +
            "SELECT organization_id FROM people p WHERE p.id = n.person_id) " +
            "WHERE organization_id IS NULL"
  end

end
