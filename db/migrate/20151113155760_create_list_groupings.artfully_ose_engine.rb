# This migration comes from artfully_ose_engine (originally 20150203174456)
class CreateListGroupings < ActiveRecord::Migration
  def change
    create_table :list_groupings do |t|
      t.integer :subscribed_list_id
      t.integer :mailchimp_id
      t.string :name
      t.string :group

      t.timestamps
    end
  end
end
