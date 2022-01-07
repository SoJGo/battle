require 'player'

describe Player do
  let (:player) { described_class.new 'Sophie' }
  
  it 'has a name' do
    expect(player.name).to eq 'Sophie'
  end
end
