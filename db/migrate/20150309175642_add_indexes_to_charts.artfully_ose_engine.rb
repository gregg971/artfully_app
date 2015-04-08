# This migration comes from artfully_ose_engine (originally 20141204171612)
class AddIndexesToCharts < ActiveRecord::Migration
  def change
    add_index :charts, :event_id
    add_index :charts, :organization_id

    add_index :sections, :chart_id

    add_index :ticket_types, :section_id
    add_index :ticket_types, :show_id
    # add_index :ticket_types, :membership_type_id
  end
end
