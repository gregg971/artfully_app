# This migration comes from artfully_ose_engine (originally 20140128223140)
class AddUuidToMember < ActiveRecord::Migration
  def change
    add_column :members, :uuid, :string
    add_index  :members, :uuid, :unique => true
  end
end
