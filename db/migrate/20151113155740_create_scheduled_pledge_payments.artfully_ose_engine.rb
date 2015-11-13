# This migration comes from artfully_ose_engine (originally 20140905080503)
class CreateScheduledPledgePayments < ActiveRecord::Migration
  def change
    create_table :scheduled_pledge_payments do |t|
      t.integer :amount
      t.integer :amount_received
      t.integer :organization_id
      t.integer :order_id
      t.integer :donation_id
      t.integer :person_id
      t.date :date
      t.string :fiscal_year

      t.timestamps
    end
  end
end
