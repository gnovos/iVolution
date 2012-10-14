require 'spec_helper'

describe "features/index" do
  before(:each) do
    assign(:features, [
      stub_model(Feature,
        :device => nil,
        :body => "MyText",
        :status => "Status"
      ),
      stub_model(Feature,
        :device => nil,
        :body => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of features" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
