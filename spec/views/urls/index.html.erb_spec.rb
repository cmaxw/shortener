require 'spec_helper'

describe "urls/index" do
  before(:each) do
    assign(:urls, [
      stub_model(Url,
        :short_code => "Short Code",
        :target => "Target"
      ),
      stub_model(Url,
        :short_code => "Short Code",
        :target => "Target"
      )
    ])
  end

  it "renders a list of urls" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Short Code".to_s, :count => 2
    assert_select "tr>td", :text => "Target".to_s, :count => 2
  end
end
