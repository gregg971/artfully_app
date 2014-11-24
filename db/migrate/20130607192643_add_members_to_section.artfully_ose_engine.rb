# This migration comes from artfully_ose_engine (originally 20130508194552)
class AddMembersToSection < ActiveRecord::Migration
  def change
    add_column :sections, :members, :boolean, :default => true, :null => false
    execute "update sections set members=1"
  end
end
