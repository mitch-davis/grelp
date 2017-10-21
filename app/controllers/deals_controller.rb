class DealsController < ApplicationController
    def index()
        @deals = Deal.near_by_deals
    end
end
