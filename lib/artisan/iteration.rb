require 'artisan/base'

module Artisan
  class Iteration < Base

    hash_attr_accessor :velocity, :created_at, :updated_at, :finish_date, :complete, :completed_at, :team_size, :start_date, :number, :committed_points_at_completion

  end
end
