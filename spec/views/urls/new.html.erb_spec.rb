require 'spec_helper'

describe "urls/new" do
  before(:each) do
    assign(:url, stub_model(Url,
      :short_code => "MyString",
      :target => "MyString"
    ).as_new_record)
  end

  it "renders new url form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", urls_path, "post" do
      assert_select "input#url_short_code[name=?]", "url[short_code]"
      assert_select "input#url_target[name=?]", "url[target]"
    end
  end
end
