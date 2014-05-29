# This migration comes from artfully_ose_engine (originally 20140523180444)
class RemoveTicketsPurchasedFromPasses < ActiveRecord::Migration
  def change
    remove_column :passes, :tickets_purchased
  end
end
