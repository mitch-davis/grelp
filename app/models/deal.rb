#comment comment commnet comment comment
class Deal < ApplicationRecord
    
    def self.randomCode
       return (0...8).map { (65 + rand(26)).chr }.join
    end
    
    def self.getDealsByID id
        @deals = Deal.where(:ID => id)
        return @deals
    end

end