RSpec.describe 'not_to_method' do
  it 'should not match' do
    expect(5).not_to eq(3)
  end
end
