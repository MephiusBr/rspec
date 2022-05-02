class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new("Matheus") }
  let(:royalty) { described_class.new("Elon") }

  it "should have a name" do
    expect(subject.name).to eq("Matheus")
    expect(royalty.name).to eq("Elon")
  end
end
