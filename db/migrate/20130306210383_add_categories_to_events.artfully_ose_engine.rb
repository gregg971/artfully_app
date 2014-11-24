# This migration comes from artfully_ose_engine (originally 20130306202810)
class AddCategoriesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :public, :boolean, :default => false
    add_column :events, :primary_category, :string
    add_column :events, :secondary_categories, :text
    execute "update events set primary_category = 'Other'"
  end
end
