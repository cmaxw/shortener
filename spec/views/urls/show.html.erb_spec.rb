require 'spec_helper'

describe "urls/show" do
  before(:each) do
    @url = assign(:url, stub_model(Url,
      :short_code => "Short Code",
      :target => "Target"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Short Code/)
    rendered.should match(/Target/)
  end
end
