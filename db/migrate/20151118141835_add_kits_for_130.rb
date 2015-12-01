class AddKitsFor130 < ActiveRecord::Migration
  def change
    MailchimpKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    ScannableTicketsKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    CampaignsKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    AssignedSeatingKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
  end
end
