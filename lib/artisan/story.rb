module Artisan
  class Story

    attr_accessor :name, :number, :optimistic, :realistic, :pessimistic

    def initialize story_chunk
      @name = story_chunk["name"]
      @number = story_chunk["number"]
      @optimistic = story_chunk["optimistic"]
      @realistic = story_chunk["realistic"]
      @pessimistic = story_chunk["pessimistic"]
    end

  end
end
