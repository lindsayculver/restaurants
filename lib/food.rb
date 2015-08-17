class Food
  attr_reader (:type)
  
  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
  end

  define_singleton_method(:all) do
    returned_foods = DB.exec("SELECT * FROM foods;")
    foods = []
    returned_foods.each() do |food|
      type = food.fetch("type")
      foods.push(Food.new({:type => type}))
    end
    foods
  end

  define_method(:save) do
    DB.exec("INSERT INTO foods (type) VALUES ('#{@type}');")
  end

  define_method(:==) do |another_food|
    self.type().==(another_food.type())
  end
end
