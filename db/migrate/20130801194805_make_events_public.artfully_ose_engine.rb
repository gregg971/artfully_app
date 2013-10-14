# This migration comes from artfully_ose_engine (originally 20130801194634)
class MakeEventsPublic < ActiveRecord::Migration
  def change
    execute "update events set public=1"
  end
end
