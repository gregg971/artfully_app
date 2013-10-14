# This migration comes from artfully_ose_engine (originally 20130530011409)
class AddTicketTypesToDiscounts < ActiveRecord::Migration
  def change
    add_column :discounts, :ticket_types, :text
  end
end
