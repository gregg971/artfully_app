# This migration comes from artfully_ose_engine (originally 20130612183117)
class AddTypesToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :person_type, :string
    add_column :searches, :person_subtype, :string
  end
end
