# This migration comes from artfully_ose_engine (originally 20130520190452)
class AddTicketTypeToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :ticket_type_id, :integer
    add_index  :tickets, :ticket_type_id
  end
end