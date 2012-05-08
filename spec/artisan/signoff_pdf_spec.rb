require 'spec_helper'

describe Artisan::SignoffPdf do
  describe "initalization hash" do
    it "contains a pdf of the sign off form" do
      described_class.new(:pdf => "test").pdf.should == "test"
    end
  end
end
