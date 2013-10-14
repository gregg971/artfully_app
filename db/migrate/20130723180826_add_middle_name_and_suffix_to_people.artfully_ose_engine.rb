# This migration comes from artfully_ose_engine (originally 20130712145416)
class AddMiddleNameAndSuffixToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :middle_name, :string
  	add_column :people, :suffix, :string
  end
end
