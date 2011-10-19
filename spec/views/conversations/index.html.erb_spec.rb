require 'spec_helper'

describe "conversations/index.html.erb" do
  before(:each) do
    assign(:conversations, [
      stub_model(Conversation),
      stub_model(Conversation)
    ])
  end

  it "renders a list of conversations" do
    render
  end
end
