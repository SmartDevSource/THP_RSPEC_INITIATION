require_relative '../lib/01_temperature'

describe "temperature conversion functions" do

  describe "#ftoc" do

    it "converts freezing temperature" do
      expect(ftoc(32)).to eq(0)
    end

    it "converts boiling temperature" do
      expect(ftoc(212)).to eq(100)
    end

    it "converts body temperature" do
      expect(ftoc(98.6)).to eq(37)
    end

    it "converts arbitrary temperature" do
      expect(ftoc(68)).to eq(20)
    end

  end

  describe "#ctof" do

    it "converts freezing temperature" do
      expect(ctof(0)).to eq(32)
    end

    it "converts boiling temperature" do
      expect(ctof(100)).to eq(212)
    end

    it "converts arbitrary temperature" do
      expect(ctof(20)).to eq(68)
    end

    it "converts body temperature" do
      expect(ctof(37)).to be_within(0.1).of(98.6)
    end

  end

end