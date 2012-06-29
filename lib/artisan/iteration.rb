require 'artisan/base'

module Artisan
  class Iteration < Base

    hash_attr_accessor :id, :velocity, :created_at, :updated_at,
      :complete, :completed_at, :team_size, :start_date, :number,
      :committed_points_at_completion, :finish_date,
      :total_billed_points

  end
end
