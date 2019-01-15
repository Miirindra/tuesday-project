require_relative '../lib/00_sum_multiply'

describe "sum of 3 or 5 multiples" do
	it "calcul natural numbers strictly less than 1000 and which are multiples of 3 or 5" do
		expect(sum_of_3_or_5_multiples(11)).to eq(33)
	end
end