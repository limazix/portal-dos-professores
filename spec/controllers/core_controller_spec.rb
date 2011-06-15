require 'spec_helper'

describe CoreController do
  render_views
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end
end

