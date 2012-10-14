require 'spec_helper'

describe "devices/edit" do
  before(:each) do
    @device = assign(:device, stub_model(Device,
      :device_id => "MyString"
    ))
  end

  it "renders the edit device form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => devices_path(@device), :method => "post" do
      assert_select "input#device_device_id", :name => "device[device_id]"
    end
  end
end
