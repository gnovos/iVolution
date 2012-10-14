require 'spec_helper'

describe "votes/edit" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :device => nil,
      :feature => nil,
      :points => 1
    ))
  end

  it "renders the edit vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path(@vote), :method => "post" do
      assert_select "input#vote_device", :name => "vote[device]"
      assert_select "input#vote_feature", :name => "vote[feature]"
      assert_select "input#vote_points", :name => "vote[points]"
    end
  end
end
