# This migration comes from artfully_ose_engine (originally 20131003134821)
class AddRelationshipsToSearch < ActiveRecord::Migration
  def change
    change_table :searches do |t|
      t.integer :relation_id
    end
  end
end
