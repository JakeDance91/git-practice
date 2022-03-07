require "counter"

RSpec.describe Counter do
  it "increases count to user's input" do
    count = Counter.new
    count.add(7)
    result = count.report
    expect(result).to eq "Counted to 7 so far."
  end
end