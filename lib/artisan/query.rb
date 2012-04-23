require 'httparty'

module Artisan
  module Query
    def self.get_project(key, address)
      response = HTTParty.get 'http://' + address + '/api/projects', :headers => {'accept' => 'application/json'}, :query => {'key' => key}
      Validation.validate_response response.code
      return response.body
    end

    def self.get_iterations(key, address)
      response = HTTParty.get 'http://' + address + '/api/projects/iterations', :headers => {'accept' => 'application/json'}, :query => {'key' => key}
      Validation.validate_response response.code
      return response.body
    end

    def self.get_stories(key, address)
      response = HTTParty.get 'http://' + address + '/api/projects/stories', :headers => {'accept' => 'application/json'}, :query => {'key' => key}
      Validation.validate_response response.code
      return response.body
    end

    def self.get_backlog_stories(key, address)
      response = HTTParty.get 'http://' + address + '/api/projects/stories/backlog', :headers => {'accept' => 'application/json'}, :query => {'key' => key}
      Validation.validate_response response.code
      return response.body
    end

    def self.update_estimates(key, story, address)
      response = HTTParty.put 'http://' + address + '/api/projects/stories/' + story.number.to_s + '/estimates', :query => {:key => key}, :headers => {'accept' => 'application/json', 'content-type' => 'application/json'}, :body => {"optimistic" => story.optimistic, "realistic" => story.realistic, "pessimistic" => story.pessimistic}.to_json
      Validation.validate_response response.code
      return response.body
    end

    module Validation
      def self.validate_response code
        if code == 401
          raise 'API key not found in database'
        elsif !code == 200
          raise 'Something went wrong with the HTTP call!'
        end
      end
    end
  end
end
