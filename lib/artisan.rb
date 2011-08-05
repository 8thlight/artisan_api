require 'artisan/story'
require 'artisan/project'
require 'artisan/query'
require 'json'

module Artisan
  def self.get_project key
    response = Query.get_project key
    json_chunk = JSON::parse(response)
    return Project.new(json_chunk)
  end

  def self.update_estimates(key, story)
    response = Query.update_estimates(key, story)
  end
end
