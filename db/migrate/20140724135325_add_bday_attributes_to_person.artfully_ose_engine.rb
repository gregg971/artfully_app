# This migration comes from artfully_ose_engine (originally 20140507184646)
class AddBdayAttributesToPerson < ActiveRecord::Migration
  def change
    add_column :people, :birth_day, :integer, :default => nil
    add_column :people, :birth_month, :integer, :default => nil
    add_column :people, :birth_year, :integer, :default => nil
  end
end
