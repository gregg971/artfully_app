# This migration comes from artfully_ose_engine (originally 20130611175122)
#
# These were missing and without them the sales export was taking forever.
class AddMoreIndexes < ActiveRecord::Migration
  def change
    add_index :orders, :person_id
    add_index :events, :venue_id
  end
end
