module Artisan
  class Base

    def self.hash_attr_accessor(*accessors)
      accessors.each do |m|
        define_method(m) do
          @attributes[m]
        end

        define_method("#{m}=") do |value|
          @attributes = {} if @attributes.nil?
          @attributes[m] = value
        end
      end
    end

    def initialize(attributes = {})
      attributes.each do |key, value|
        send("#{key}=", value) if respond_to?("#{key}=")
      end
    end

    def attributes
      return @attributes
    end

  end
end
