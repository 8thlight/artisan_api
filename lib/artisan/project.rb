module Artisan
  class Project

    attr_reader :name, :description

    def initialize json_chunk
      @name = json_chunk["project"]["name"]
      @description = json_chunk["project"]["description"]
    end

  end
end
