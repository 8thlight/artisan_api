require 'spec_helper'

describe Artisan::IterationTotalBilledPointsByCraftsman do

  it "initializes with an api call json chunk" do
    hash = {
      'total_billed_points_by_craftsman' => {
        'Brian' => 10.5,
        'Joe' => 4
      }
    }
    data = Artisan::IterationTotalBilledPointsByCraftsman.new(hash)
    data.total_billed_points_by_craftsman["Brian"].should == 10.5
    data.total_billed_points_by_craftsman["Joe"].should == 4
  end

end
