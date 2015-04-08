# This migration comes from artfully_ose_engine (originally 20141204173004)
class AddIndexesToEpt < ActiveRecord::Migration
  def change
    add_index :events_pass_types, :event_id
    add_index :events_pass_types, :pass_type_id
    add_index :events_pass_types, [:event_id, :pass_type_id]
    add_index :events_pass_types, [:pass_type_id, :event_id]
    add_index :events_pass_types, :organization_id
  end
end
