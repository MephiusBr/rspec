RSpec.describe Hash do
  subject(:custom) { { a: 1, b: 2 } }

  it "should have 2 key-value pairs" do
    expect(subject.length).to eq(2)
    expect(custom.length).to eq(2)
  end

  context "nested example" do
    it "should have 2 key-value pairs" do
      expect(subject.length).to eq(2)
      expect(custom.length).to eq(2)
    end
  end
end
