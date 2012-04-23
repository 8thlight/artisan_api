module Artisan
  class Iteration

    attr_accessor :velocity, :created_at, :updated_at, :finish_date, :complete, :completed_at, :team_size, :start_date, :number, :committed_points_at_completion

    def initialize iteration_chunk
      @velocity = iteration_chunk["iteration"]["velocity"]
      @created_at = iteration_chunk["iteration"]["created_at"]
      @updated_at = iteration_chunk["iteration"]["updated_at"]
      @finish_date = iteration_chunk["iteration"]["finish_date"]
      @complete = iteration_chunk["iteration"]["complete"]
      @completed_at = iteration_chunk["iteration"]["completed_at"]
      @team_size = iteration_chunk["iteration"]["team_size"]
      @start_date = iteration_chunk["iteration"]["start_date"]
      @number = iteration_chunk["iteration"]["number"]
      @committed_points_at_completion = iteration_chunk["iteration"]["committed_points_at_completion"]
    end

  end
end
