require 'artisan/base'

module Artisan
  class Story < Base

    hash_attr_accessor :name, :number, :optimistic, :realistic, :pessimistic, :weighted_mean
  
  end
end
