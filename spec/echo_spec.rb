require 'echo'

describe Echo do
describe '#prompt' do
  it 'asks the user to say something' do
    expect(subject.prompt).to eq "Say something:"
  end
end

describe '#get_input' do
  it 'saves user input' do
    expect(subject.get_input).not_to be nil
  end
end

describe "#get_time" do
  it "gets the current time" do
    expect(subject.get_time).to eq Time.now.strftime("%d/%m/%Y %H:%M")
  end
end

describe "#print" do
  it "prints the correct output" do

    expect(subject.print).to eq "#{subject.get_time} | You said: '#{subject.get_input}'!"
  end
end


end
