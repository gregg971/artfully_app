# This migration comes from artfully_ose_engine (originally 20141211165307)
class AddExternalReferenceToActions < ActiveRecord::Migration
  def change
    add_column :actions, :external_reference, :string
  end
end
