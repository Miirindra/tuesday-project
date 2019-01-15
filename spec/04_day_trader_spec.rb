require_relative '../lib/04_day_trader'

describe "the day_trader method" do
  it "Day trader" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end