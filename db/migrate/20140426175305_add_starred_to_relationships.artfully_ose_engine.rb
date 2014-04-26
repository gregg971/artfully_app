# This migration comes from artfully_ose_engine (originally 20131003200508)
class AddStarredToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :starred, :boolean, :default => false
  end
end
