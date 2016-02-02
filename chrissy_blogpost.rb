class Blog
    
    @@all_blog_posts = []
    @@count_blog_posts = 0
    
    def self.all
        @@count_blog_posts
       
    end

    def self.add(thing)
        @@all_blog_posts << thing
        @@count_blog_posts += 1
puts @@count_blog_posts
    end

    def self.publish
        @@all_blog_posts.each do |post|
            puts "Title:\n #{post.title}"
            puts "Author:\n #{post.author}"
            puts "Date created:\n #{post.date}"
            puts "Content:\n #{post.content}"
        end
    end
end


class BlogPost < Blog
    
    attr_writer :author, :title, :content, :date
    attr_reader :author, :title, :content, :date
    def self.create
        post = new
        puts "Enter author name"
        post.author = gets.chomp
        puts "Enter title"
        post.title = gets.chomp
        puts "Enter content"
        post.content = gets.chomp
        post.date = Time.now
        post.save
        puts "Do you want to create another post? Y/N"
        response = gets.chomp
        create if response.upcase == "Y"
    end
    def save
        BlogPost.add(self)
    end
end

BlogPost.create
puts BlogPost.all
