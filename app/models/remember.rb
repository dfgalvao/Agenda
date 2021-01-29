class Remember < ApplicationRecord
    scope :search, ->(query) { where("name like ?", "%#{query}%")}
       
    #def self.search(query)
        #where("name like ?", "%#{query}%")
    #end
end
