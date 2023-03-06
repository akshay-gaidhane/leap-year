require_relative '../src/leap_year'
RSpec.describe LeapYear do
  context 'Divisible by 400' do
    subject { LeapYear.new(2000) } 
    it 'returns true' do
      expect(subject.call).to eq(true)
    end
  end

  context 'Divisible by 100 but not by 400' do
    subject { LeapYear.new(1700) } 
    it 'returns false' do
      expect(subject.call).to eq(false)
    end
  end

  context 'Divisible by 4 but not by 100' do
    subject { LeapYear.new(2008) } 
    it 'returns true' do
      expect(subject.call).to eq(true)
    end
  end

  context 'Not divisible by 4' do
    subject { LeapYear.new(2017) } 
    it 'returns false' do
      expect(subject.call).to eq(false)
    end
  end
end