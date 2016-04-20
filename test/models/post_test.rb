require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "if model is valid" do
   post = Post.new(:title => "Some Title", :body => "This is some body text")
   assert post.valid?
  end
  
  test "if model is invalid when title missing" do
   post = Post.new(:body => "This is some body text")
   assert (not post.valid?)
  end
  
  test "if model is invalid when body too short" do
   post = Post.new(:title => "Some Title", :body => "abc")
   assert (not post.valid?)
  end
  
end
