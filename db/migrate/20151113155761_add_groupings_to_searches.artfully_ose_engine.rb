# This migration comes from artfully_ose_engine (originally 20150203222451)
class AddGroupingsToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :groupings, :text
    add_column :searches, :not_groupings, :text
  end
end
