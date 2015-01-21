require 'rails_helper'

RSpec.describe "statuses/show", :type => :view do
  before(:each) do
    @status = assign(:status, Status.create!(
      :name => "Name",
      :content => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
