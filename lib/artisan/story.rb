require 'artisan/base'

module Artisan
  class Story < Base

    hash_attr_accessor :name, :number, :optimistic, :realistic, :pessimistic,
      :weighted_mean, :assigned_user_id, :assigned_user_name,
      :assigned_user_email, :estimate, :acceptance_criteria
  end
end
