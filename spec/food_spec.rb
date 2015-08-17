require('spec_helper')

describe(Food) do

  describe(".all") do
    it('is empty at first') do
      expect(Food.all()).to(eq([]))
    end
  end
  
end
