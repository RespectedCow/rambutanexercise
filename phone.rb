class Phone
    def initialize(brand, model,storage, release_year)
      @brand = brand
      @model = model
      @storage = storage
      @release_year = release_year
    end

    def brand
        @brand
    end

    def model
        @model
    end

    def storage
        @storage
    end

    def release_year
        @release_year
    end

    def brand=(some_brand)
        @brand = some_brand
    end

    def model=(some_model)
        @model = some_model
    end

    def storage=(some_storage)
        @storage = some_storage
    end

    def release_year=(some_release_year)
        @release_year = some_release_year
    end
end

phone1 = Phone.new("Apple", "X", "500GB", 2019)
phone2 = Phone.new("Apple", "11", "500GB", 2020)
phone3 = Phone.new("Apple", "12", "500GB", 2019)
phone4 = Phone.new("Apple", "13", "500GB", 2019)
phone5 = Phone.new("Apple", "S", "500GB", 2019)

phone1.brand = "Samsung"
puts phone1.brand