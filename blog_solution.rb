class Blog
    @@all_blog_posts = []   #Class variable
    @@num_blog_posts = 0    #Class variable
    
    def self.all            #Why do we put the self keyword?  Class method (no instance necessary)
        @@all_blog_posts        #Returns all_blog_posts.  That's all it does
    end

def self.add(thing)  #Class method?
        @@all_blog_posts << thing
        @@num_blog_posts += 1
    end

def self.publish        #Class method
@@all_blog_posts.each do |post|
    puts "Title:\n #{post.title}"
    puts "Body:\n #{post.content}"
    puts "Publish Date:\n #{post.created_at}"
end
end

end


class BlogPost < Blog
    
    def self.create #Class method.  Creates the post
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
    #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
end

def title   #How can I have 2 methods named title?
    @title
end

def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
end

def created_at
    @created_at
end

def created_at=(created_at)
    @created_at = created_at
end

def content
    @content
end

def content=(content)
    @content = content
end

def save    #When I call post.save, shouldn't I be sending in the blog post?  How does it know WHAT to save?  I thought the methods were self contained.
    BlogPost.add(self)  #Can I use either Blog.add OR BlogPost.add here since it's a class method?
end

end

BlogPost.create #I can call the class method without an instance of a class?
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
Blog.publish    #Why is this not Blog.publish?  Isn't that the class variable?