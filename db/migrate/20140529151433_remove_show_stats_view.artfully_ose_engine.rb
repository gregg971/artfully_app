# This migration comes from artfully_ose_engine (originally 20140515143651)
class RemoveShowStatsView < ActiveRecord::Migration
  def change
    ActiveRecord::Base.connection.execute "DROP TABLE IF EXISTS show_stats_view"
    ActiveRecord::Base.connection.execute "DROP VIEW IF EXISTS show_stats_view"
  end
end
