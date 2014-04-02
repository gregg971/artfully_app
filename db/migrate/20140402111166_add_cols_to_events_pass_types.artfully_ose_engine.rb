# This migration comes from artfully_ose_engine (originally 20140328172333)
class AddColsToEventsPassTypes < ActiveRecord::Migration
  def change
    add_column :events_pass_types, :ticket_types, :text
    add_column :events_pass_types, :excluded_shows, :text
  end
end
