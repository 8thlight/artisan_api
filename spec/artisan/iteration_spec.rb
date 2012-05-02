require 'spec_helper'

describe Artisan::Iteration do

  it "initializes with an api call json chunk" do
    hash = {
      'id'        => 33,
      'number'    => 1,
      'complete'  => false
    }
    iteration = Artisan::Iteration.new(hash)
    iteration.number.should == 1
    iteration.id.should == 33
    iteration.complete.should be_false
  end

end
