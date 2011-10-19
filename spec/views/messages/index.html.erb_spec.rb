require 'spec_helper'

describe "messages/index.html.erb" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :user_id => 1,
        :title => "Title",
        :text => "MyText",
        :thread => 1,
        :parent_id => 1
      ),
      stub_model(Message,
        :user_id => 1,
        :title => "Title",
        :text => "MyText",
        :thread => 1,
        :parent_id => 1
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
