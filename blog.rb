class Blog
    @@total_blogPosts = 0   #Class variable
    @@array_of_posts = Array.new    #Create new array to hold posts
    
    def initialize          #every time a new instance is created this number will be incremented.  Instance method
        @@total_blogPosts+=1
    end
    
    def self.all
        @@array_of_posts
    end
    
    def self.add_to_array(blog_post) #Send in the new blog post (called after the post is created)
        @@array_of_posts = @@array_of_posts << blog_post  #Add the new blog post to the array
    end
    
    def self.publishAll
        @@array_of_posts.each do |post|
            puts "Title:\n #{post.get_title}"
            puts "Body:\n #{post.get_content}"
            puts "Publish Date:\n #{post.get_publishDate}"
        end
    end
end

class BlogPost < Blog
    
    def set_author=(author)
        @author = author
    end
    
    def get_author
        return @author
    end
    
    def set_title=(title)
        @title = title
    end
    
    def get_title
        return @title
    end
    
    def set_content=(content)
        @content=content
    end
    
    def get_content
        return @content
    end
    
    def set_publishDate=(publishDate)
        @publishDate =publishDate
    end
    
    def get_publishDate
        return @publishDate
    end
    
    def save(post_to_save)
        BlogPost.add_to_array(post_to_save)
    end
 end

new_post = "y"

while new_post != "n"
    puts "Let's set up your new blog post!  Please input the post author"
    blog_post = BlogPost.new    #Create new instance of class, and set up class
    blog_post.set_author = gets.chomp
    puts "Please enter the post tile"
    blog_post.set_title = gets.chomp
    puts "Please enter the post content"
    blog_post.set_content = gets.chomp
    puts "Please enter the post publish date"
    blog_post.set_publishDate = gets.chomp  #finish creating instance of class
    blog_post.save(blog_post)
    puts "Great, your post has been saved.  Would you like to create a new post (y/n)?"
    new_post = gets.chomp.downcase
end

puts "Ready to publish all (y/n)?"
ready_to_publish = gets.chomp.downcase
if ready_to_publish == 'y'
    BlogPost.publishAll
end
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
    
    