# This migration comes from artfully_ose_engine (originally 20140328192612)
class AddPassTypeIdToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :pass_type_id, :integer, :default => nil
  end
end
