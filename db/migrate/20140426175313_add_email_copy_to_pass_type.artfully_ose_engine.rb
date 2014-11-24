# This migration comes from artfully_ose_engine (originally 20140422193345)
class AddEmailCopyToPassType < ActiveRecord::Migration
  def change
    add_column :pass_types, :email_copy, :text, :default => ""
  end
end
