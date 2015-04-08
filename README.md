# Artful.ly Open Source Edition

Version 1.3.0

An Open-source application to run your arts organization.  Features include:

* Free and paid ticketing on the web
* Discount codes
* Patron tracking
* Patron importing and exporting
* Order tracking, importing, and exporting
* Door lists
* Box office for in-person sales
* Advanced patron searching
* Search for patrons by tag, ticket purchase, event attendance, membership status, donation amounts
* Assign more than one price to a single ticket.
* Memberships. Your organization can sell memberships in your store, offer events and tickets to members only, and provide a username and password to members.
* Passes. Sell season tickets and subscriptions to your shows.
* Generate a page for people to donate to your organization.

New in 1.3

* Relationships
* Householding
* Fundriaing campaign management
* QR coded scannable tickets

Coming soon...

* [Mailchimp](http://mailchimp.com) integration
* Importing members
* Relationships
* Householding
* Fundriaing campaign management
* QR coded scannable tickets

# About

Creating your own Artful.ly OSE installation requires a basic understanding of Git, Heroku, Ruby and Rails.

**If you don't know what any of that means** then you probably want our [hosted event ticketing version of Artful.ly](http://www.artful.ly)

## New Install? Upgrading?

If this is a new install, start in the Dependencies section. 

If this is an upgrade from 1.2.0, back up your database (seriously, back up your database) and follow these instructions.

    rake artfully_ose_engine:install:migrations
    git commit -am "Upgrade to 1.3.0"

Push to Heroku
 
    heroku run rake db:migrate
    heroku run rake upgrade_1_3:create_donations
    heroku restart

## Dependencies

You'll need the following apps/services to use Artful.ly OSE

* [Solr](http://lucene.apache.org/solr/)
* [MySQL](http://www.mysql.com)
* [Braintree](https://www.braintreepayments.com)
* [S3](http://aws.amazon.com/s3/)

## Prerequisites

Make sure you have the following installed on your system

* [Ruby](http://www.ruby-lang.org)
* [Rubygems](http://docs.rubygems.org/read/chapter/3/)
* [Rails 3.2](http://rubyonrails.org/)
* [Heroku cli](https://github.com/heroku/heroku/)
* [Git](http://git-scm.com/)

Also, before you begin you should set up your production MySQL database.

## Clone the app 

### For the most recent stable release

Bugs notwithstanding, *Master is production ready at all times*. 

    git clone git@github.com:fracturedatlas/artfully_app.git
    cd artfully_app

### For the edge release

All ongoing development happens in topic branches. Note this is different from the branch strategy of Artfully OSE.

    git clone <BRANCH> git@github.com:fracturedatlas/artfully_app.git
    cd artfully_app

### Setup

    gem install foreman
    bundle install

## Database

Copy database.yml.sample into a local copy

    cp config/database.yml.sample config/database.yml

Update database.yml to point to your mysql database.  Specify a local database and a production database. You can create your databases like so:

    rake db:create:all

Install the schema

    rake db:schema:load

## Running Locally

If you intend to do any custom development or testing, go ahead and set up Artful.ly OSE locally on your machine.  If you have no interest in this, feel free to skip ahead to Deployment to Heroku
    
Open a rails console with `rails console` and run

    User.create!({:email => "youradmin@example.com", :password => "your_strong_password", :password_confirmation => "your_strong_password" })
    
### Turn on the local server

    foreman start
    
Open `http://localhost:5000` in a browser

### Environment

Artful.ly OSE requires the following environment variables to be set if they aren't explicitly set in `config/environment.rb`

    BRAINTREE_MERCHANT_ID
    BRAINTREE_PUBLIC_KEY
    BRAINTREE_PRIVATE_KEY

    S3_BUCKET
    S3_ACCESS_KEY_ID
    S3_SECRET_ACCESS_KEY
    
    WEBSOLR_URL

Additionally these are defaulted in the config.ru and config/unicorn.rb files but can be set in the environment as well
    
    UNICORN_WORKERS
    UNICORN_TIMEOUT
    UNICORN_BACKLOG
    MAX_REQUEST_MIN *used by unicorn killer*
    MAX_REQUEST_MAX *used by unicorn killer*
    OOM_MIN *used by unicorn killer*
    OOM_MAX *used by unicorn killer*

## Deployment to Heroku

### About delayed_job

Prior to 1.2, Artful.ly OSE shipped with `delayed_job` disabled. 

With the 1.2 release __A worker is required to run Artfully OSE__. This is because our ticket locking strategy changed to accommodate multiple prices per ticket.

### Sending email

__Artful.ly will not send confirmation emails to customers without a valid SMTP setup__

A good option is to enable SendGrid.  SendGrid has a free usage tier which integrates with Heroku.  See the note in `Setup SendGrid` to enable SendGrid.  Artful.ly OSE will work with SendGrid without any modification necessary.

Otherwise, you'll need to specify your smtp settings in `config/environments/production.rb` under `config.action_mailer.smtp_settings`

Finaly, regardless of smtp provider, __YOU MUST__ edit the file `config/environments/production.rb` and change the value of `config.action_mailer.default_url_options` to match your hostname.

    config.action_mailer.default_url_options={:host => 'myapp.herokuapp.com'}
    
or if you own your own domain
    
    config.action_mailer.default_url_options={:host => 'www.myexampletheater.com'}

### Push 

Follow the [Heroku instructions](https://devcenter.heroku.com/articles/creating-apps) for creating an app

    heroku apps:create myapp
    git add .
    git commit -m "Prepping push to Heroku"
    git push heroku master
    
### Setup SendGrid (Optional)

If you're using SendGrid to send email, enable the starter plan with the following command:

    heroku addons:add sendgrid:starter

See the [SendGrid documentation](https://addons.heroku.com/sendgrid) for more information.

### Setup Daily Sales Email (Optional)

Artful.ly can send a nightly email to the organization owner. To configure this, enable the heroku scheduler add-on

    heroku addons:add scheduler

Go to Heroku Scheduler Dashboard, Click "Add Job...", and enter "rake csv:sales". Set the frequency to "Daily" and set the time to a time that is convenient for you.

For more information on Scheduler, see https://devcenter.heroku.com/articles/scheduler#scheduling-jobs

### Setup the production database

Before running this, you must have setup and configured a MySQL database.  If you database is on Amazon's RDS, you'll have to enable that plugin on Heroku by running

    heroku addons:add amazon_rds
    heroku config:add DATABASE_URL=mysql2://username:password@url.ofyourdatabase.com/databaseName

Otherwise, make sure you have edited, committed, and pushed your database.yml file.

Finally, run:

    heroku run bundle exec rake db:schema:load

### Set environment variables

If you didn't set environment variables in `config/environment.rb`, you'll need to set them on the heroku command line.  Run this command for each environment variable listed in "Environment"
    
    heroku config:add BRAINTREE_MERCHANT_ID='...'
    
If you have a Google Analytics account, you can set the environment variables `GA_ACCOUNT` and `GA_DOMAIN` to enable Google Analytics in Artful.ly OSE.

### Create your first user

This user will be the organization administrator.  In a Heroku console, run

    User.create!({:email => "youradmin@example.com", :password => "your_strong_password", :password_confirmation => "your_strong_password" })

### Restart the app

    heroku restart
  
### Load your application

Go to `http://myapp.herokuapp.com` in a web browser
