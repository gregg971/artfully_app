# This migration comes from artfully_ose_engine (originally 20131212164553)
class AddCopyToIndividualsOption < ActiveRecord::Migration
  def change
    add_column :households, :overwrite_member_addresses, :boolean, :default => true, :null => false
  end
end
