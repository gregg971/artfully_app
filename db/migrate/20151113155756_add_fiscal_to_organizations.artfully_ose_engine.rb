# This migration comes from artfully_ose_engine (originally 20150113091344)
class AddFiscalToOrganizations < ActiveRecord::Migration
  def self.up
    add_column :organizations, :fiscal_month, :integer, :default => nil
    add_column :organizations, :fiscal_day, :integer, :default => nil
  end

  def self.down
    remove_column :organizations, :fiscal_month
    remove_column :organizations, :fiscal_day
  end
end
