# This migration comes from artfully_ose_engine (originally 20140307144454)
class AddEventsPassTypes < ActiveRecord::Migration
  def change
    create_table :events_pass_types do |t|
      t.belongs_to  :organization
      t.belongs_to  :event
      t.belongs_to  :pass_type
    end
  end
end
