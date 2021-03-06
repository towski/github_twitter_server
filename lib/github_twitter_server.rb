require 'faraday'
require 'friendly'
module GithubTwitterServer
  autoload :Feed,   "github_twitter_server/feed"
  autoload :Cacher, "github_twitter_server/cacher"

  class Connection < Faraday::Connection
    include Faraday::Adapter::Typhoeus.loaded? ? Faraday::Adapter::Typhoeus : Faraday::Adapter::NetHttp
  end
end