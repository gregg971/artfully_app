# This migration comes from artfully_ose_engine (originally 20141208225228)
class AddMailchimpListsToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :mailchimp_lists, :text
  end
end
