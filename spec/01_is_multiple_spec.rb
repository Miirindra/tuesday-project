require_relative '../lib/01_is_multiple.rb'

describe "number multiple of 3 or 5" do
	it "tests if a number is multiple of 3 or 5" do
		expect(is_multiple_of_3_or_5?(3)).to eq(true)
	end
	it "another test" do
		expect(is_multiple_of_3_or_5?(7)).to eq(false)
	end
end