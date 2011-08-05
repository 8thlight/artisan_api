class Story

  attr_accessor :name, :number, :optimistic, :realistic, :pessimistic

  def initialize json_chunk
    @name = json_chunk["name"]
    @number = json_chunk["number"]
    @optimistic = json_chunk["optimistic"]
    @realistic = json_chunk["realistic"]
    @pessimistic = json_chunk["pessimistic"]
  end

end
