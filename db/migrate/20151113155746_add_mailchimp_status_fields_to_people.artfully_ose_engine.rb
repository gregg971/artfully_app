# This migration comes from artfully_ose_engine (originally 20141126183258)
class AddMailchimpStatusFieldsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :opted_out_lists, :text
    add_column :people, :unconfirmed_lists, :text
  end
end
