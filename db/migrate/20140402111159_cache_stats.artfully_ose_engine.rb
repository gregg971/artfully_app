# This migration comes from artfully_ose_engine (originally 20140218202726)
class CacheStats < ActiveRecord::Migration
  def change
    Show.find_in_batches do |shows|
      shows.each {|s| s.delay.refresh_stats unless s.event.nil? }
    end
  end
end
