require 'spec_helper'

describe Component do

  before :each do
    @component = Component.new :part_no, :quantity, :price, "description", :supplier, :rating
  end

  describe '#new' do
    it "should create a new component object" do
      @component.should be_an_instance_of Component  
    end

    it "should raise exception given too little args" do
      lambda { @test_args = Component.new }.should raise_exception ArgumentError
    end
  end

end
