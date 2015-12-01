# This migration comes from artfully_ose_engine (originally 20140904164927)
class AddFieldsToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :house_hold,           :boolean, :default => false
    add_column :seats, :development_hold,     :boolean, :default => false
    add_column :seats, :tech_hold,            :boolean, :default => false
    add_column :seats, :contractual_hold,     :boolean, :default => false
    add_column :seats, :person_hold,          :boolean, :default => false
    add_column :seats, :press_hold,           :boolean, :default => false

    add_column :seats, :wheelchair,           :boolean, :default => false
    add_column :seats, :wheelchair_companion, :boolean, :default => false
    add_column :seats, :aisle,                :boolean, :default => false
  end
end
