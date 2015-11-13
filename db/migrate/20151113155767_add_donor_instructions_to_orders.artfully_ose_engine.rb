# This migration comes from artfully_ose_engine (originally 20150408123349)
class AddDonorInstructionsToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :donor_instructions, :text, :after => :special_instructions
  end

  def self.down
    remove_column :orders, :donor_instructions
  end
end
