require 'spec_helper'

describe "urls/edit" do
  before(:each) do
    @url = assign(:url, stub_model(Url,
      :short_code => "MyString",
      :target => "MyString"
    ))
  end

  it "renders the edit url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", url_path(@url), "post" do
      assert_select "input#url_short_code[name=?]", "url[short_code]"
      assert_select "input#url_target[name=?]", "url[target]"
    end
  end
end
