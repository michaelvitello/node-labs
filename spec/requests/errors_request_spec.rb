require 'rails_helper'

RSpec.describe "errors", :type => :request do

  it "displays the 500 page" do
    get "/500"
    assert_select 'div#alert', 'Status 500'
    assert_select 'div[itemtype]'
  end

end
