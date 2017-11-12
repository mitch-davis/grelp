class Deal < ApplicationRecord
    
    def self.get_cuisines
        all_cuisines = []
        self.all.each{|r| all_cuisines << r.cuisine if !(all_cuisines.include? r.cuisine)}
        all_cuisines.sort!
       
    end
    
    def self.sort_by(column)
        data = Deal.all
        return data.order(column)
    end
    
    def self.randomCode
       return (0...8).map { (65 + rand(26)).chr }.join
    end
end
