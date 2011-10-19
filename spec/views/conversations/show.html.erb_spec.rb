require 'spec_helper'

describe "conversations/show.html.erb" do
  before(:each) do
    @conversation = assign(:conversation, stub_model(Conversation))
  end

  it "renders attributes in <p>" do
    render
  end
end
