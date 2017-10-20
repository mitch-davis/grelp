class DealsController < ApplicationController
    def index()
        @test = Deal.test
    end
end
