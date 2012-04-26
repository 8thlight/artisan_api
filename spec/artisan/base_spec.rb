require 'spec_helper'
require 'artisan/base'

describe 'Base' do

  before(:each) do
    class Peep < Artisan::Base
      hash_attr_accessor :name, :address
    end

    @peep = Peep.new(name: "Nancy", address: "123 Main Street")
  end

  it "creates the attributes specified by hash_attr_accessor" do
    @peep.name.should eq("Nancy")
    @peep.address.should eq("123 Main Street")
  end

  it "ignores hash keys not present in hash_attr_accessor" do
    instance = Peep.new(name: "John", phone: '867-5309')
    instance.name.should eq("John")
    lambda { instance.phone }.should raise_exception
  end

  it "allows access to the attributes via attributes method" do
    attributes = @peep.attributes
    attributes[:name].should eq("Nancy")
  end

  it "attributes hash is a copy (can't set values)" do
    attributes = @peep.attributes
    attributes[:name].should eq("Nancy")
    @peep.attributes[:name] = "Bob"
    attributes[:name].should eq("Nancy")
  end
end
