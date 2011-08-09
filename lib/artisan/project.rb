module Artisan
  class Project

    attr_reader :stories, :name

    def initialize json_chunk
      @name = json_chunk.first["story"]["project"]["name"]
      story_json_chunks = json_chunk.collect{|item| item["story"]}
      @stories = []
      generate_stories story_json_chunks
    end

    def generate_stories story_chunks
      story_chunks.each do |story|
        @stories << Story.new(story)
      end
    end

  end
end
