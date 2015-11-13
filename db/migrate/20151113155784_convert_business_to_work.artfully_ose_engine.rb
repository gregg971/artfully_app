# This migration comes from artfully_ose_engine (originally 20150810133417)
class ConvertBusinessToWork < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.execute("UPDATE addresses SET kind='Work' WHERE kind='Business'")
  end
end
