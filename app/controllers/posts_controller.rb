class PostsController < ApplicationController
    def index
        @posts = Post.all.sort {|first, second| first.created_at <=> second.created_at}
    end
    
    def new
        @post = Post.new
        @category = Category.all
    end
    
    def create
        @post = Post.new(params[:post])
        if @post.save
            redirect_to posts_path, notice: "Your post has been saved" 
        else
            render "new"
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
            redirect_to posts_path, notice: "Your post has been updated" 
        else
            render "edit"
        end
    end
    
    def show 
        @post = Post.find(params[:id])
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: "Your post has been deleted"
    end
    
    def download
       send_file Rails.root.join('public', 'myrubyblog.dump') #, :type => "application/octet-stream", :x_sendfile=>true
    end
    
end
class PostsController < ApplicationController
    def index
        @posts = Post.all.sort {|first, second| first.created_at <=> second.created_at}
    end
    
    def new
        @post = Post.new
        @category = Category.all
    end
    
    def create
        @post = Post.new(params[:post])
        if @post.save
            redirect_to posts_path, notice: "Your post has been saved" 
        else
            render "new"
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
            redirect_to posts_path, notice: "Your post has been updated" 
        else
            render "edit"
        end
    end
    
    def show 
        @post = Post.find(params[:id])
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, notice: "Your post has been deleted"
    end
    
    def download
       send_file Rails.root.join('public', 'myrubyblog.dump') #, :type => "application/octet-stream", :x_sendfile=>true
    end
    
end
