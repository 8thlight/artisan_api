class Project

  attr_reader :stories

  def initialize json_chunk
    story_json_chunks = json_chunk.collect{|story| story["story"]}
    @stories = []
    generate_stories story_json_chunks
  end

  def generate_stories story_chunks
    story_chunks.each do |story|
      @stories << Story.new(story)
    end
  end

end
