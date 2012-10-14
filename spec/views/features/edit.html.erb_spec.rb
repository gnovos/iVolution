require 'spec_helper'

describe "features/edit" do
  before(:each) do
    @feature = assign(:feature, stub_model(Feature,
      :device => nil,
      :body => "MyText",
      :status => "MyString"
    ))
  end

  it "renders the edit feature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => features_path(@feature), :method => "post" do
      assert_select "input#feature_device", :name => "feature[device]"
      assert_select "textarea#feature_body", :name => "feature[body]"
      assert_select "input#feature_status", :name => "feature[status]"
    end
  end
end
