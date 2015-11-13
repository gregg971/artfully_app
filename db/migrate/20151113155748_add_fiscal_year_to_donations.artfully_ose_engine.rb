# This migration comes from artfully_ose_engine (originally 20141128143944)
class AddFiscalYearToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :fiscal_year, :string
  end
end
