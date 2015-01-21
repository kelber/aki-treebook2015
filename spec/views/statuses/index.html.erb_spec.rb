require 'rails_helper'

RSpec.describe "statuses/index", :type => :view do
  before(:each) do
    assign(:statuses, [
      Status.create!(
        :name => "Name",
        :content => "MyText",
        :user_id => 1
      ),
      Status.create!(
        :name => "Name",
        :content => "MyText",
        :user_id => 1
      )
    ])
  end

  it "renders a list of statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
