# This migration comes from artfully_ose_engine (originally 20140909150251)
class AddOrgToSuggestedHousehold < ActiveRecord::Migration
  def change
    change_table :suggested_households do |t|
      t.references :organization
    end
  end
end
