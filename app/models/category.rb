class Category < ActiveRecord::Base
    attr_accessible :category_name
    has_many :posts
    
    def to_s
        category_name
    end
end
