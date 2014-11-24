# This migration comes from artfully_ose_engine (originally 20130820025134)
class MakeTicketUuidNotNull < ActiveRecord::Migration
  def up
    # Every ticket must have a uuid for this to work.
    # Run `rake backfill_ticket_uuids` first
    change_column_null :tickets, :uuid, false
  end

  def down
    change_column_null :tickets, :uuid, true
  end
end
