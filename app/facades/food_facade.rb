class FoodFacade
    def self.search_foods(ingredient)
    json = FoodService.ingredient_search(ingredient)
        json[:foods].map do |food|
            Food.new(food)
        end.first(10)
    end

    def self.total_results(ingredient)
        FoodService.ingredient_search(ingredient)[:totalHits]
    end
end