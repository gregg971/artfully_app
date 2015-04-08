# This migration comes from artfully_ose_engine (originally 20140616045851)
class AddBirthdateToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :birth_day, :integer, :default => nil
    add_column :searches, :birth_month, :integer, :default => nil
    add_column :searches, :birth_year, :integer, :default => nil
  end
end
