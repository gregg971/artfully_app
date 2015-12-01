namespace :artfully_app do
  task :create_kits => :environment do
    TicketingKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    RegularDonationKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    PassesKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    MembershipKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    
    MailchimpKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    ScannableTicketsKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    CampaignsKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
    AssignedSeatingKit.first_or_create!({:state => "activated", :organization_id => 1}, :without_protection => true)
  end
end