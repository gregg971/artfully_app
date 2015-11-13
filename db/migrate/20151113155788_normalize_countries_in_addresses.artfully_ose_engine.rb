# This migration comes from artfully_ose_engine (originally 20150911203530)
class NormalizeCountriesInAddresses < ActiveRecord::Migration
  include Imports::Mappings
  # select count(*), country from addresses group by country

  def change
    country_normalizations.each do |abbr, country|
      puts "Updating #{abbr} to #{country}"
      execute "UPDATE addresses set country='#{country}' where country='#{abbr}'"
    end
  end
end
