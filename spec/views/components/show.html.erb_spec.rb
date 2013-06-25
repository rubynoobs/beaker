require 'spec_helper'

describe "components/show" do
  before(:each) do
    @component = assign(:component, stub_model(Component,
      :part_no => "Part No",
      :quantity => 1,
      :price => "9.99",
      :description => "Description",
      :supplier => "Supplier",
      :rating => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part No/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/Description/)
    rendered.should match(/Supplier/)
    rendered.should match(/2/)
  end
end
