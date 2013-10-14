# This migration comes from artfully_ose_engine (originally 20130412184415)
class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
