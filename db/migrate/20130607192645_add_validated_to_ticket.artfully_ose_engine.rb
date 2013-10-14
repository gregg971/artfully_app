# This migration comes from artfully_ose_engine (originally 20130526021126)
class AddValidatedToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :validated, :boolean, :default => false
  end
end
