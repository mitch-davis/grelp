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
    
    def self.getDealsByName name
        #we will do some matching in the database here to pull deals with the incoming name
        #mock deal for now...
        return [{:name => "20% off", :description => "20% off any purchase", :code => "12345", :expire => "12/5/17"}]
    end
    
end
