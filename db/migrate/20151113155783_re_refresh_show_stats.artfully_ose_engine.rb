# This migration comes from artfully_ose_engine (originally 20150807005404)
class ReRefreshShowStats < ActiveRecord::Migration
  def change
    Show.all.each do |show|
      show.local_datetime = show.datetime_local_to_unscoped_event.to_s unless show.event_id.nil?
      show.save(:validate => false)
    end
  end
end
