web: bundle exec unicorn -c ./config/unicorn.rb
worker: bundle exec rake jobs:work
solr: bundle exec rake sunspot:solr:run
redis: redis-server /usr/local/etc/redis.conf