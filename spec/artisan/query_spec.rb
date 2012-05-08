require "spec_helper"
require "ostruct"

describe Artisan::Query do
  let(:pdf) { "test" }

  it ".get_signoff_pdf fetches the raw pdf file from Artisan" do
    response = OpenStruct.new :body => pdf, :code => 200
    HTTParty.stub! :get => response
    Artisan::Query.get_signoff_pdf("api_key", 3, "address").should == pdf
  end
end
