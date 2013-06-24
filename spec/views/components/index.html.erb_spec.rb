require 'spec_helper'

describe "components/index" do
  before(:each) do
    assign(:components, [
      stub_model(Component,
        :part_no => "Part No",
        :quantity => 1,
        :price => "9.99",
        :description => "Description",
        :supplier => "Supplier",
        :rating => 2
      ),
      stub_model(Component,
        :part_no => "Part No",
        :quantity => 1,
        :price => "9.99",
        :description => "Description",
        :supplier => "Supplier",
        :rating => 2
      )
    ])
  end

  it "renders a list of components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part No".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Supplier".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
