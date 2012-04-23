module Artisan
  class Iteration

    attr_accessor :velocity, :created_at, :updated_at, :finish_date, :complete, :completed_at, :team_size, :start_date, :number, :committed_points_at_completion

    def initialize iteration_chunk
      @velocity = iteration_chunk['velocity']
      @created_at = iteration_chunk['created_at']
      @updated_at = iteration_chunk['updated_at']
      @finish_date = iteration_chunk['finish_date']
      @complete = iteration_chunk['complete']
      @completed_at = iteration_chunk['completed_at']
      @team_size = iteration_chunk['team_size']
      @start_date = iteration_chunk['start_date']
      @number = iteration_chunk['number']
      @committed_points_at_completion = iteration_chunk['committed_points_at_completion']
    end

  end
end
