require "spec_helper"

describe Artisan do
  let(:pdf) { "test" }

  it ".get_signoff_pdf fetches a sign off pdf from Artisan" do
    Artisan::Query.stub! :get_signoff_pdf => pdf
    described_class.get_signoff_pdf("abc", 5, "http://nothing.com").raw_pdf.should == pdf
  end
end
