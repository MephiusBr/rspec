RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1,2,3] }
end

RSpec.describe "first group example" do
  include_context 'common'

  it "should access external variables" do
    expect(@foods.length).to eq(0)
    @foods << 'spaguetthi'
    expect(@foods.length).to eq(1)
  end

  it "can reuse instance variables across diferent examples" do
    expect(@foods.length).to eq(0)
  end

  it "can use shared helper methods" do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe "second group in another file" do
  include_context 'common'

  it "can use shared let variables" do
    expect(some_variable.length).to eq(3)
  end
end
