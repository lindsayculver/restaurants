require('spec_helper')

describe(Food) do

  describe(".all") do
    it('is empty at first') do
      expect(Food.all()).to(eq([]))
    end
  end

  describe("#save") do
    it ("adds food to the array of saved foods") do
      test_food = Food.new({:type => "Italian Meatball"})
      test_food.save()
      expect(Food.all()).to(eq([test_food]))
    end
  end

  describe('#==') do
    it('is the same task if it has the same description') do
      food1 = Food.new({:type => 'Italian Meatball'})
      food2 = Food.new({:type => 'Italian Meatball'})
      expect(food1).to(eq(food2))
    end
  end
end
