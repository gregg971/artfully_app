# This migration comes from artfully_ose_engine (originally 20141021175311)
class CreateTicketTypesSeats < ActiveRecord::Migration
  def change
    create_table :ticket_types_seats do |t|
      t.belongs_to  :ticket_type
      t.belongs_to  :seat
    end

    add_index :ticket_types_seats, :ticket_type_id
    add_index :ticket_types_seats, :seat_id
  end
end
