require "./lib/fizz_buzz"

describe FizzBuzz do
  describe ".generate" do
    let(:string) { FizzBuzz.generate }

    def assert_index_contains_value(index, value)
      expect(string.split(',')[index -1]).to eq(value)
    end

    it "returns a string" do
      expect(FizzBuzz.generate).to be_a(String)
    end

    it "returns 1 for the first element in string" do
      assert_index_contains_value(1, "1")
    end

    it "returns 2 for the second element in the string" do
      assert_index_contains_value(2, "2")
    end

    it "returns Fizz for the third element in the string" do
      assert_index_contains_value(3, "Fizz")
    end

    it "returns Buzz for the fifth element in the string" do
      assert_index_contains_value(5, "Buzz")
    end

    it "returns FizzBuzz for the fifthteenth element in the string" do
      assert_index_contains_value(15, "FizzBuzz")
    end
  end
end
