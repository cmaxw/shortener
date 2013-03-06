require 'spec_helper'

describe "urls/edit" do
  before(:each) do
    @url = assign(:url, stub_model(Url,
      :destination => "MyString",
      :slug => "MyString"
    ))
  end

  it "renders the edit url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", url_path(@url), "post" do
      assert_select "input#url_destination[name=?]", "url[destination]"
      assert_select "input#url_slug[name=?]", "url[slug]"
    end
  end
end
