require 'rails_helper'

RSpec.describe "affiliates/new", type: :view do
  before(:each) do
    assign(:affiliate, Affiliate.new(
      :name => "MyString",
      :address => "MyString",
      :phone_number => "MyString",
      :email => "MyString",
      :website => "MyString",
      :twitter => "MyString"
    ))
  end

  it "renders new affiliate form" do
    render

    assert_select "form[action=?][method=?]", affiliates_path, "post" do

      assert_select "input#affiliate_name[name=?]", "affiliate[name]"

      assert_select "input#affiliate_address[name=?]", "affiliate[address]"

      assert_select "input#affiliate_phone_number[name=?]", "affiliate[phone_number]"

      assert_select "input#affiliate_email[name=?]", "affiliate[email]"

      assert_select "input#affiliate_website[name=?]", "affiliate[website]"

      assert_select "input#affiliate_twitter[name=?]", "affiliate[twitter]"
    end
  end
end
