class Book
    def initialize(title, author,release_year)
      @title = title
      @author = author
      @release_year = release_year
    end

    def title
        @title
    end

    def author
        @author
    end

    def release_year
        @release_year
    end

    def title=(some_title)
        @title = some_title
    end

    def author=(some_author)
        @author = some_author
    end

    def release_year=(some_release_year)
        @release_year = some_release_year
    end
end

book1 = Book.new("Lord of the house", "Donald Trump", 2021)
book2 = Book.new("Why little Joe is too old to be President", "Donald Duck", 2021)
book3 = Book.new("Why I am the best president ever", "Donald Trump", 2022)
book4 = Book.new("Why I am the best duck ever", "Donald duck", 2022)
book5 = Book.new("I need money, please buy this book", "Donald Trump", 2023)

book1.author = "Donald Duck"
puts book1.author