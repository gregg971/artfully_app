# This migration comes from artfully_ose_engine (originally 20131223215615)
class GoodbyeOrderView < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.execute "DROP TABLE IF EXISTS order_view"
    ActiveRecord::Base.connection.execute "DROP VIEW IF EXISTS order_view"
  end
end
