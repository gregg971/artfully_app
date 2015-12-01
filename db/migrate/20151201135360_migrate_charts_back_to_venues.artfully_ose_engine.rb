# This migration comes from artfully_ose_engine (originally 20150106161744)
class MigrateChartsBackToVenues < ActiveRecord::Migration
  #
  # This migration is going to be slow but we can't run it in parallel after a release
  #

  def change
    Venue.all.each do |venue|
      next if venue.default_chart.present?

      if venue.event.present? && venue.event.default_chart.present?
        venue.update_default_chart_from(venue.event.default_chart)
      else
        GeneralAdmissionChart.default_chart_for(venue).save
      end
    
    end
  end
end
