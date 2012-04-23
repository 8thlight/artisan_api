module Artisan
  class Project

    attr_reader :name, :description

    def initialize json_chunk
      @name = json_chunk['name']
      @description = json_chunk['description']
    end

  end
end
