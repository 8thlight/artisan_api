require 'httparty'

module Artisan
  module Query
    def self.get_project(key, address = 'artisan.8thlight.com')
      response = HTTParty.get 'http://' + address + '/api/projects', :headers => {'accept' => 'application/json'}, :query => {'key' => key}
      Query.check_code response.code
      return response.body
    end

    def self.update_estimates(key, story, address = 'artisan.8thlight.com')
      response = HTTParty.put 'http://' + address + '/api/projects/stories/' + story.number.to_s + '/estimates', :query => {:key => key}, :headers => {'accept' => 'application/json', 'content-type' => 'application/json'}, :body => '{"Optimistic" => story.optimistic, "Realistic" => story.realistic, "Pessimistic" => story.pessimistic}'.to_json
      Query.check_code response.code
      return response
    end

    def self.check_code response_code
      if response_code == 401
        raise 'API key not found in database'
      elsif !response_code == 200
        raise 'Something went wrong!'
      end
    end
  end
end

