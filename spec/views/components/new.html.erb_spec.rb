require 'spec_helper'

describe "components/new" do
  before(:each) do
    assign(:component, stub_model(Component,
      :part_no => "MyString",
      :quantity => 1,
      :price => "9.99",
      :description => "MyString",
      :supplier => "MyString",
      :rating => 1
    ).as_new_record)
  end

  it "renders new component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => components_path, :method => "post" do
      assert_select "input#component_part_no", :name => "component[part_no]"
      assert_select "input#component_quantity", :name => "component[quantity]"
      assert_select "input#component_price", :name => "component[price]"
      assert_select "input#component_description", :name => "component[description]"
      assert_select "input#component_supplier", :name => "component[supplier]"
      assert_select "input#component_rating", :name => "component[rating]"
    end
  end
end
