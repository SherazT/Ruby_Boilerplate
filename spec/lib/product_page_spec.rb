require_relative '../../lib/product_page'

RSpec.describe ProductPage do

  let(:watch) do
    {
      'product_type' => 'Watch',
      'variants' => [
        { 'price' => '3.30' }
      ]
    }
  end

  describe 'total_page_dollars' do

    it 'calculates total dollars for clocks and watches' do
      # setup
      data = {
        'products' => [ clock, watch, pants ]
      }

      pager = ProductPage.new(data)

      # Test
      expect(pager.total_page_dollars).to eql(6.60)
    end

  describe ".any?" do
    it 'is true when there are products' do
      # Setup
      data = {
        'products' => [ clock, watch, pants ]
      }

      pager = ProductPage.new(data)

      expect(pager.any?).to eql(true)
    end
  end
end
