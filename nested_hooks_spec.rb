RSpec.describe 'nested hooks' do
  before(:context) do
    puts "OUTER before context"
  end

  before(:example) do
    puts "OUTER before example"
  end

  it "should do basic math" do
    expect(2 + 2).to eq(4)
  end

  context "with condition A" do
    before(:context) do
      puts "INNER before context"
    end

    before(:example) do
      puts "INNER before example"
    end

    it "should do some more basic math" do
      expect(1 + 1).to eq(2)
    end

    it "does subtraction as well" do
      expect(5 - 3).to eq(2)
    end
  end
end
