class YamlTwitter
  cattr_accessor :oauth
  @@oauth = {}
end

if Rails.env != 'test'
  c = YAML::load(File.open("#{Rails.root.to_s}/config/twitter_oauth.yml"))
    
  YamlTwitter.oauth = {
    :request_token_url => c[Rails.env]['request_token_url'],
    :access_token_url => c[Rails.env]['access_token_url'],
    :authorize_url => c[Rails.env]['authorize_url'],
    :consumer_key => c[Rails.env]['consumer_key'],
    :consumer_secret => c[Rails.env]['consumer_secret']
  }
end