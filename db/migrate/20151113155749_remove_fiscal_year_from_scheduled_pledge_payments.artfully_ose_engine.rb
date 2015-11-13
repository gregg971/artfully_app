# This migration comes from artfully_ose_engine (originally 20141128151407)
class RemoveFiscalYearFromScheduledPledgePayments < ActiveRecord::Migration
  remove_column :scheduled_pledge_payments, :fiscal_year
end
