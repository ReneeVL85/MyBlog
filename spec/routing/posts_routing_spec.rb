require 'rails_helper'

RSpec.describe PostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/").to route_to("welcome#index")
    end

    it "routes to #create" do
      expect(:post => "/posts").to route_to("posts#create")
    end

    it "routes to #show" do
      expect(:get =>"/posts/1").to route_to("posts#show", id: "1")
    end

  end
end
