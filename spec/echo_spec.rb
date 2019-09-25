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

    expect(subject.print).to eq "#{subject.get_time} | You said: '#{@input}'!"
  end
end

describe '#game' do
  it { is_expected.to respond_to :game }

  it 'breaks the loop' do
    allow(subject).to receive(:get_input) { "exit" }
    expect { subject.game }.to raise_error("Goodbye!")
  end

end


end
