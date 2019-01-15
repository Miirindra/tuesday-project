require_relative '../lib/03_caesar_cipher'
	describe "#caesar_cipher" do
		it "also known as Caesar's cipher or Caesar's code" do
			expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end
end
