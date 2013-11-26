# This migration comes from artfully_ose_engine (originally 20130722153731)
class AddAutenticationTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authentication_token, :string
  end
end
