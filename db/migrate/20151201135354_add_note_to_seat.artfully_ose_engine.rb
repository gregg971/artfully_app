# This migration comes from artfully_ose_engine (originally 20140912170010)
class AddNoteToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :seat_note, :string
    add_column :seats, :hold_note, :string
  end
end
