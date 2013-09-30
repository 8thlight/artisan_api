require 'artisan/base'

module Artisan
  class Story < Base

    attr_accessor :tags

    hash_attr_accessor :name, :number, :optimistic, :realistic, :pessimistic,
      :weighted_mean, :assigned_user_id, :assigned_user_name, :complete,
      :assigned_user_email, :estimate, :acceptance_criteria, :nonbillable, :tag_list

    def initialize(attributes = {})
      super
      @tags = tag_list.split(" ")
    end

  end
end
