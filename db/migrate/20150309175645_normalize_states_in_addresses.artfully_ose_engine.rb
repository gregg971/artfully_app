# This migration comes from artfully_ose_engine (originally 20141229204605)
class NormalizeStatesInAddresses < ActiveRecord::Migration
  include Imports::Mappings
  # select count(*), state from addresses group by state

  def change
    state_normalizations.each do |abbr, state|
      puts "Updating #{abbr} to #{state}"
      execute "UPDATE addresses set state='#{state}' where state='#{abbr}'"
    end
  end
end
