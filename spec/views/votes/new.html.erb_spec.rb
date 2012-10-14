require 'spec_helper'

describe "votes/new" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :device => nil,
      :feature => nil,
      :points => 1
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_device", :name => "vote[device]"
      assert_select "input#vote_feature", :name => "vote[feature]"
      assert_select "input#vote_points", :name => "vote[points]"
    end
  end
end
