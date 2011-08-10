module Artisan
  class Project

    attr_reader :stories, :name, :description

    def initialize json_chunk
      @stories = []
      @name = json_chunk["project"]["name"]
      @description = json_chunk["project"]["description"]
    end

    def generate_stories story_chunks
      story_chunks.each do |story|
        @stories << Story.new(story)
      end
    end

  end
end
