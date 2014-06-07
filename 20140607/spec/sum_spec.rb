require 'pry'
require File.expand_path('../..', __FILE__) + '/sum'


describe 'Calc' do
  before do
    @calc = Calc.new
  end
  subject { @calc.calc }
  it "should eq EXPECTATION" do
    expect(subject).to eq 3
  end
end
