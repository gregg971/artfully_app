# This migration comes from artfully_ose_engine (originally 20130731153806)
class AddMemberNumber < ActiveRecord::Migration
  def change
    add_column :members, :member_number, :string, :null => false
  end
end
