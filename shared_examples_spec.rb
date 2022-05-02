RSpec.shared_examples 'value of three' do
  it 'should have value equal to 3' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3] }
  include_examples 'value of three'
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'value of three'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'value of three'
end
