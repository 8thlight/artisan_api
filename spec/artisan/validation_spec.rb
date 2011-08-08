require 'spec_helper'

describe Artisan::Query::Validation do

  it 'raises an exception if the server returns a 401' do
    lambda { Artisan::Query::Validation.validate_response 401 }.should raise_error
  end
end
