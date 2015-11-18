class AddKitsFor130 < ActiveRecord::Migration
  def change
    MailchimpKit.create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    ScannableTicketsKit.create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    CampaignsKit.create!({:state => "activated", :organization_id => 1}, :without_protection => true)
  end
end
