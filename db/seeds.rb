# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


deals = [{:Restaurant => 'Panera Bread', :deal_title => 'HALF50', :Offer_Code => 'GF35-34T',:lat => '38.8054031', :long => '-104.82162349999999', :Exp_Date => '12/15/17', :Description => 'Get 20% off orders over $20, Monday-Friday', :Restrictions => 'Only available at some stores, and only valid from 2-6pm. Only one deal valid at a time',:cuisine => 'American'},
         {:Restaurant => 'Panera Bread', :deal_title => 'OFF10', :Offer_Code => 'GF35-34T', :lat => '38.8054031', :long => '-104.82162349999999', :Exp_Date => '2/01/18',:Description => '10% off all order using quickpay starting after 6', :Restrictions => 'Only valid for one entree/order.', :cuisine => 'American'  },
         {:Restaurant => 'Panera Bread', :deal_title => '5TOGO', :Offer_Code => 'GF35-34T',:lat => '38.9043423', :long => '-104.81830939999998', :Exp_Date => '11/20/17', :Description => '$5 of online orders over $10', :Restrictions => 'To-go only, can only use with a membership and only valid 4 times a month', :cuisine => 'American'},
         {:Restaurant => 'Bone Fish Grill', :deal_title => 'DINE & DISCOVER DINNER FOR TWO FOR $55', :Offer_Code => 'G3534T',:lat => '38.9024972', :long => '-104.81811479999999', :Exp_Date => 'November 13, 2017',:Description => 'An appetizer of BANG BANG SHRIMP to share. Your choice of two specials, CEDAR PLANK STEELHEAD, FRESH SWORDFISH &PUMPKIN RAVIOLI, DYNAMITE-STYLE SHRIMP, or WILD SNAPPER & SHRIMP, and your choice of dessert to share.', :Restrictions => 'Available for a limited time! ', :cuisine => 'Mexican'},
         {:Restaurant => 'Bone Fish Grill', :deal_title => 'Hooked on Tuesday', :Offer_Code => 'F0EIUJ',:lat => '38.9024972', :long => '-104.81811479999999', :Exp_Date => '12/01/17', :Description => '3-course menu, choose salads + entree + dessert, starting ar $15.90', :Restrictions => '*Dine-in after 4pm only. Prices, product, participation and restaurant hours may vary by location. Not valid with coupons and other offers. **THESE ITEMS ARE COOKED TO ORDER. CONSUMING RAW OR UNDERCOOKED MEATS, POULTRY, SEAFOOD, SHELLFISH, OR EGGS WHICH MAY CONTAIN HARMFUL BACTERIA MAY INCREASE YOUR RISK OF FOODBORNE ILLNESS OR DEATH. ESPECIALLY IF YOU HAVE CERTAIN MEDICAL CONDITIONS.',:cuisine => 'Mexican'},
         {:Restaurant => 'Bone Fish Grill', :deal_title => 'Bang Wednesday', :Offer_Code => '0HRBNE',:lat => '38.9024972', :long => '-104.81811479999999', :Exp_Date => '12/01/17', :Description => 'Spice up the middle of your week with our signature appetizer. Bang Bang Shrimp is just $6 every Wednesday.', :Restrictions => 'Prices, product availability, participation and hours may vary by location, only available Wednesdays', :cuisine => 'Mexican'},
         {:Restaurant => 'Applebee’s', :deal_title => 'DINNER FOR TWO FOR $20', :Offer_Code => '2FOR20',:lat => '38.847539', :long => '-104.75920889999998', :Exp_Date => '01/15/18', :Description => 'Your choice of 2 selected entrees for $20', :Restrictions => 'Only in restaurant, only on coupon may be applied at one time, and only available for certain entrees.', :cuisine => 'Italian'},
         {:Restaurant => 'Applebee’s', :deal_title => '$5 OFF ON ONLINE ORDERS', :Offer_Code => '5OFF25',:lat => '38.847539', :long => '-104.75920889999998', :Exp_Date => '01/15/18', :Description => 'Get 5 dollars of any purchase online only', :Restrictions => 'Entire meal must be over $10, only one deal may be applied at one time.', :cuisine => 'Italian'},
         {:Restaurant => 'Applebee’s', :deal_title => 'TWO FOR $25', :Offer_Code => '2FOR25',:lat => '38.94126360000001', :long => '-104.79991640000003', :Exp_Date => '12/08/17', :Description => 'Your choice of 2 entrees from the menu with a wider varity of than the 2 for 20', :Restrictions => 'Only in restaurant, only on coupon may be applied at one time, and only available for certain entrees.', :cuisine => 'Chinese'},
         {:Restaurant => 'Applebee’s', :deal_title => 'LATE NIGHT APP', :Offer_Code => 'APP03',:lat => '38.94126360000001', :long => '-104.79991640000003', :Exp_Date => '12/08/17', :Description => 'All appetizers are half off after 9pm ', :Restrictions => 'Only valid for appetizers while products last', :cuisine => 'Chinese'},
         {:Restaurant => 'Texas Roadhouse', :deal_title => 'Free App', :Offer_Code => 'STEAK',:lat => '38.8767288', :long => '-104.72085429999998', :Exp_Date => '12/28/17', :Description => 'Text 68984 steak to get your choice of a free appetizers', :Restrictions => 'No more than 5 text messages/month', :cuisine => 'Thai'},
         {:Restaurant => 'Texas Roadhouse', :deal_title => 'Early Dinner', :Offer_Code => 'Early06',:lat => '38.8767288', :long => '-104.72085429999998', :Exp_Date => '12/28/17', :Description => '11 different entrees from 4 - 6pm ', :Restrictions => 'Not available on holidays and no other offers valid with offer', :cuisine => 'Thai'},
        ]
        



deals.each do |deal|
    Deal.create!(deal)
end