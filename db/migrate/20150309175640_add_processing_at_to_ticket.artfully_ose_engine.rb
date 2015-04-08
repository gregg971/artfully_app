# This migration comes from artfully_ose_engine (originally 20141126184811)
class AddProcessingAtToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :processing_at, :datetime, :default => nil
  end
end
