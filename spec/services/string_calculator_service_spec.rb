require 'rails_helper'

RSpec.describe StringCalculatorService, type: :service do
  let(:string_calculator) { StringCalculatorService.new }

  describe '#add' do
    context 'when input is an empty string' do
      it 'returns 0' do
        expect(string_calculator.add("")).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number itself for input 18' do
        expect(string_calculator.add("18")).to eq(18)
      end

      it 'returns the number itself for input 1' do
        expect(string_calculator.add("1")).to eq(1)
      end
    end

    context 'when input is multiple numbers' do
      it 'returns the sum of the numbers for input:(18,3,2025)' do
        expect(string_calculator.add("18,3,2025")).to eq(2046)
      end

      it 'returns the sum of the numbers for input:(1,2,3)' do
        expect(string_calculator.add("1,2,3")).to eq(6)
      end
    end

    context 'when input contains new lines between numbers' do
      it 'returns the sum of the numbers' do
        expect(string_calculator.add("1\n2,3")).to eq(6)
      end
    end

    context 'when input contains custom delimiter' do
      it 'returns the sum of the numbers when delimiter is ;' do
        expect(string_calculator.add("//;\n1;2")).to eq(3)
      end

      it 'returns the sum of the numbers when delimiter is +' do
        expect(string_calculator.add("//+\n1+2")).to eq(3)
      end
    end
  end
end