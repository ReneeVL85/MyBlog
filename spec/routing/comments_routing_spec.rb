require 'rails_helper'

RSpec.describe CommentsController, type: :routing do
  describe "routing" do

    it "routes to #create" do
      expect(:post => "/posts/3/comments").to route_to("comments#create", post_id: "3")
    end

    it "routes to #destroy" do
      expect(:delete =>"/posts/3/comments/1").to route_to("comments#destroy", id:"1", post_id: "3")
    end

  end
end
