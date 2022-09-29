require 'spec_helper'
require_relative '../exercises/stock_picker'

RSpec.describe 'Stock Picker Tests' do
  describe 'standard test' do

        it 'Returns correct pair of days to buy and sell #1' do
            expect(stock_picker([38,808,342,8099])).to eq([0,3])
        end

        it 'Returns correct pair of days to buy and sell #2' do
            expect(stock_picker([10, 0])).to eq([0,0])
        end
        it 'Returns correct pair of days to buy and sell #2' do
            expect(stock_picker([0, 0, 3,8,2, 9,8,11,11,5])).to eq([0,7])
        end
    end
end