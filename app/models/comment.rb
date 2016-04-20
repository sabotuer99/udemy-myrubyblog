class Comment < ActiveRecord::Base
  attr_accessible :post, :name, :body, :post_id
    
  belongs_to :post
  
  validates_presence_of :name
  validates_presence_of :body
  validates_length_of :name, :within => (2..20)
end
