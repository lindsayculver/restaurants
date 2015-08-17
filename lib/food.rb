class Food
  define_method(:initialize) do |attributes|
    @description = attributes.fetch(:description)
  end

  define_singleton_method(:all) do
    returned_foods = DB.exec("SELECT * FROM foods;")
    foods = []
    returned_foods.each() do |food|
      description = food.fetch("description")
      foods.push(Food.new({:description => description}))
    end
    foods
  end

end
