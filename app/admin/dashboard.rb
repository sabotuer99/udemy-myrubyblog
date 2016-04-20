ActiveAdmin.register_page "Dashboard" do

  content do
    panel "Recent Posts" do
      table_for Post.order("id desc").limit(10) do
        column :id
        column "Post Title", :title do |post|
          link_to post.title, [:admin, post]
        end
        column :category, :sortable => :category
        column :created_at
      end
      strong {link_to "Show All Posts", :admin_posts}
    end
    
    panel "Categories" do
      table_for Category.order("id desc").limit(10) do
        column :id
        column "Name", :category_name do |category|
          link_to category.category_name, [:admin, category]
        end
        column :created_at
      end
      strong {link_to "Show All Categories", :admin_categories}
    end
    
    
    
    
  end
end
