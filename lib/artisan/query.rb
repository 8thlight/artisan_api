require 'httparty'

module Artisan
  module Query
    def self.get_project key
      response = HTTParty.get 'http://artisan.8thlight.com/api/projects', :key => key, :accept => :json
      Query.raise_not_okay_exception response.code
      return response.body
    end

    def self.update_estimates(key, story)
      return HTTParty.put 'http://artisan.8thlight.com/api/projects/stories/' + story.number + '/estimates', :key => key, :accept => :json, :optimistic => story.optimistic, :realistic => story.realistic, :pessimistic => story.pessimistic
      Query.raise_not_okay_exception response.code
      return response
    end

    def self.raise_not_okay_exception response_code
      if !response_code == 200
        raise 'Server response not 200'
      end
    end
  end
end
