require_relative '../lib/02_multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    # je te laisse écrire ces tests-là
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
  end
end

describe "sum_of_3_or_5_multiples(n) method" do
	it "return the sum of multiple 3 or 5" do
		expect(sum_of_3_or_5_multiples(11)).to eq(33)
	end

	it "is the same" do
		expect(sum_of_3_or_5_multiples(10)).to eq(23)
	end

  it "return: 'Yo ! Je ne prends que les entiers naturels. TG' if you enter a number not integer " do
    expect(sum_of_3_or_5_multiples(1.25)).to eq("Yo! Je ne prends que les entiers naturels. TG")
  end
end
