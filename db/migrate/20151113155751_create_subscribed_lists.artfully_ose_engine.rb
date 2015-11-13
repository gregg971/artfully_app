# This migration comes from artfully_ose_engine (originally 20141205202030)
class CreateSubscribedLists < ActiveRecord::Migration
  def up
    create_table :subscribed_lists do |t|
      t.integer :person_id
      t.string :list_id
      t.boolean :confirmed, :default => false
      t.timestamps
    end

    rename_column :people, :subscribed_lists, :old_subscribed_lists
    remove_column :people, :unconfirmed_lists
  end

  def down
    add_column :people, :unconfirmed_lists, :text
    rename_column :people, :old_subscribed_lists, :subscribed_lists
    drop_table :subscribed_lists
  end
end
