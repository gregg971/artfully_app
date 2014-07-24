# This migration comes from artfully_ose_engine (originally 20140619194127)
class AddDoNotCallToPeople < ActiveRecord::Migration
  def change
    add_column :people, :do_not_call, :boolean, :default => false
  end
end
