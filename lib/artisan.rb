require 'artisan/project'
require 'artisan/story'
require 'artisan/query'
require 'json'

module Artisan
  def self.get_project(key, address = 'artisan.8thlight.com')
    response = Query.get_project(key, address)
    json_chunk = JSON::parse(response)
    return Project.new(json_chunk)
  end

  def self.get_stories(key, address = 'artisan.8thlight.com')
    response = Query.get_stories(key, address)
    json_chunk = JSON::parse(response)

    @stories = []
    json_chunk.collect { |story_chunk| @stories << Story.new(story_chunk) }

    return @stories
  end

  def self.get_backlog_stories(key, address = 'artisan.8thlight.com')
    response = Query.get_backlog_stories(key, address)
    json_chunk = JSON::parse(response)

    @stories = []
    json_chunk.collect { |story_chunk| @stories << Story.new(story_chunk) }

    return @stories
  end

  def self.update_estimates(key, story, address = 'artisan.8thlight.com')
    response = Query.update_estimates(key, story, address)
  end
end
