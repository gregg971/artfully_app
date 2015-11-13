# This migration comes from artfully_ose_engine (originally 20140818141140)
class CreateSoftCredits < ActiveRecord::Migration
  def change
    create_table :soft_credits do |t|
      t.integer :amount
      t.integer :donation_id
      t.integer :person_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
