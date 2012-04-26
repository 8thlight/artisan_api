require 'spec_helper'

describe Artisan::Iteration do

  it "initializes with an api call json chunk" do
    hash = {
      'number'    => 1,
      'complete'  => false
    }
    iteration = Artisan::Iteration.new(hash)
    iteration.number.should == 1
    iteration.complete.should be_false
  end

end
