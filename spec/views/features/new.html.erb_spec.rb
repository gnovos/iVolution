require 'spec_helper'

describe "features/new" do
  before(:each) do
    assign(:feature, stub_model(Feature,
      :device => nil,
      :body => "MyText",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new feature form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => features_path, :method => "post" do
      assert_select "input#feature_device", :name => "feature[device]"
      assert_select "textarea#feature_body", :name => "feature[body]"
      assert_select "input#feature_status", :name => "feature[status]"
    end
  end
end
