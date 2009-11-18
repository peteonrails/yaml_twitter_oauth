class YamlTwitter
  cattr_accessor :oauth
  @@oauth = {}
end

if RAILS_ENV != 'test'
  c = YAML::load(File.open("#{RAILS_ROOT}/config/twitter_oauth.yml"))
    
  YamlTwitter.oauth = {
    :request_token_url => c[RAILS_ENV]['request_token_url'],
    :access_token_url => c[RAILS_ENV]['access_token_url'],
    :authorize_url => c[RAILS_ENV]['authorize_url'],
    :consumer_key => c[RAILS_ENV]['consumer_key'],
    :consumer_secret => c[RAILS_ENV]['consumer_secret']
  }
end