# This migration comes from artfully_ose_engine (originally 20131013192807)
class ChangeNumberOfShowsToTickets < ActiveRecord::Migration
  def change
    rename_column :membership_types, :number_of_shows, :number_of_tickets
  end
end
