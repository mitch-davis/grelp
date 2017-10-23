class Business
    def self.message
        "stub"
    end

    def self.near location
       return [["Il Vicino", "5", "$$$", "10 A.M - 10 P.M", "5"],[ "Panera Bread", "5", "$$$", "10 A.M - 10 P.M", "5"],["Smash Burger", "5", "$$$", "10 A.M - 10 P.M", "5"],["Hacienda", "5", "$$$", "10 A.M - 10 P.M", "5"], ["Jives", "5", "$$$", "10 A.M - 10 P.M", "5"]]
    end
    
    def self.attributes
        return ["Resturants", "Ratings", "Price Range", "Hours of Operations", "Number of Coupons"]
    end
end