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
      it 'returns the number itself' do
        expect(string_calculator.add("18")).to eq(18)
      end
    end
  end
end