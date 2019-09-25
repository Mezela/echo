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
end