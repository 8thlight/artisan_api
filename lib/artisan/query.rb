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

    def self.get_signoff_pdf(key, iteration_id, address)
      response = HTTParty.get(
        'http://' + address + '/api/reports',
        :headers => {
          'accept' => 'application/pdf'
        },
        :query => {
          'key' => key,
          'options'  => {
            'iteration_id' => iteration_id,
            'show_owner' => '1',
            'sections'   => {
              'Completed' => '1',
              'Features'  => '1',
              'Tasks'     => '1',
              'Untagged'  => '0'
            }
          }
        }
      )
      Validation.validate_response response.code
      return response.body
    end

    def self.get_stories_by_iteration(key, iteration_number, address)
      response = HTTParty.get(
        'http://' + address + '/api/projects/iterations/stories',
        :headers => {
          'accept' => 'application/json'
        },
        :query => {
          'key' => key,
          'iteration_number' => iteration_number
        }
      )
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

    def self.authenticate(username, password, address)
      response = HTTParty.get 'http://' + address + '/api/auth/authenticate', :headers => {'accept' => 'application/json'}, :query => {'username' => username, 'password' => password}
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
