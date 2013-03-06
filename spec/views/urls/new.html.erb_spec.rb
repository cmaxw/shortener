require 'spec_helper'

describe "urls/new" do
  before(:each) do
    assign(:url, stub_model(Url,
      :destination => "MyString",
      :slug => "MyString"
    ).as_new_record)
  end

  it "renders new url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", urls_path, "post" do
      assert_select "input#url_destination[name=?]", "url[destination]"
      assert_select "input#url_slug[name=?]", "url[slug]"
    end
  end
end
