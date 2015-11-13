# This migration comes from artfully_ose_engine (originally 20150421092302)
class AddKindToAddresses < ActiveRecord::Migration
  def self.up
    add_column :addresses, :kind, :string, :default => 'Other'
    add_column :addresses, :is_primary, :boolean, :default => true
  end

  def self.down
    remove_column :addresses, :kind
    remove_column :addresses, :is_primary
  end
end
