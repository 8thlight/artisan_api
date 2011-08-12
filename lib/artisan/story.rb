module Artisan
  class Story

    attr_accessor :name, :number, :optimistic, :realistic, :pessimistic

    def initialize story_chunk
      @name = story_chunk["story"]["name"]
      @number = story_chunk["story"]["number"]
      @optimistic = story_chunk["story"]["optimistic"]
      @realistic = story_chunk["story"]["realistic"]
      @pessimistic = story_chunk["story"]["pessimistic"]
    end

  end
end
