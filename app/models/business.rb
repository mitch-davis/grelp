class Business
    def self.message
        "stub"
    end

    def self.near location
       return [["Il Vicino", "5", "$$$", "10 A.M - 10 P.M", "2"],[ "Panera Bread", "4", "$$", "10 A.M - 9 P.M", "10"],["Smash Burger", "2", "$", "10 A.M - 8 P.M", "7"],["Hacienda", "4", "$$$", "11 A.M - 10 P.M", "3"], ["Jives", "1", "$", "8 A.M - 10 P.M", "20"]]
    end
    
    def self.attributes
        return ["Resturants", "Ratings", "Price Range", "Hours of Operations", "Number of Coupons"]
    end
end