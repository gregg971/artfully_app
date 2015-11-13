# This migration comes from artfully_ose_engine (originally 20141212172119)
class AddNotMailchimpListsToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :not_mailchimp_lists, :text
  end
end
