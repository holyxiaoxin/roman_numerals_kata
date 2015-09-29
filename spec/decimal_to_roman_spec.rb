require_relative "../converter"

RSpec.describe Converter do
    subject(:converter) { Converter.new }

    def to_roman(num)
      converter.decimal_to_roman(num)
    end

    it { expect(to_roman(1)).to eq "I" }
    it { expect(to_roman(2)).to eq "II" }
    it { expect(to_roman(3)).to eq "III" }
    it { expect(to_roman(4)).to eq "IV" }

    it { expect(to_roman(5)).to eq "V" }
    it { expect(to_roman(6)).to eq "VI" }

    it { expect(to_roman(9)).to eq "IX" }

    it { expect(to_roman(10)).to eq "X" }
    it { expect(to_roman(20)).to eq "XX" }

    it { expect(to_roman(40)).to eq "XL" }
    it { expect(to_roman(50)).to eq "L" }
    it { expect(to_roman(90)).to eq "XC" }

    it { expect(to_roman(100)).to eq "C" }

    it { expect(to_roman(400)).to eq "CD" }
    it { expect(to_roman(500)).to eq "D" }
    it { expect(to_roman(900)).to eq "CM" }

    it { expect(to_roman(1000)).to eq "M" }

    it { expect(to_roman(339)).to eq "CCCXXXIX" }
    it { expect(to_roman(1987)).to eq "MCMLXXXVII" }
    it { expect(to_roman(1999)).to eq "MCMXCIX" }
end
