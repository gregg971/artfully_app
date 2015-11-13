# This migration comes from artfully_ose_engine (originally 20151009175206)
class AddReceiptDetailsToTicketTypes < ActiveRecord::Migration
  def change
    add_column :ticket_types, :receipt_details, :text
  end
end
