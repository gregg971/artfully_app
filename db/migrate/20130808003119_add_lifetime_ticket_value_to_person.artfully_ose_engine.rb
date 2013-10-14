# This migration comes from artfully_ose_engine (originally 20130808002742)
class AddLifetimeTicketValueToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :lifetime_ticket_value, :integer, :default => 0
  end

  def self.down
    remove_column :people, :lifetime_ticket_value
  end
end
