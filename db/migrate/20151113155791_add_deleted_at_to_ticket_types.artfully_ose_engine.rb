# This migration comes from artfully_ose_engine (originally 20151006180702)
class AddDeletedAtToTicketTypes < ActiveRecord::Migration
  def change
    add_column :ticket_types, :deleted_at, :timestamp
  end
end
