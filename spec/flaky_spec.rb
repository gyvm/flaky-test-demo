RSpec.describe 'Flaky Tests' do
  it 'fails 10% of the time' do
    expect(rand < 0.9).to be true
  end

  it 'fails 30% of the time' do
    expect(rand < 0.7).to be true
  end

  it 'fails 50% of the time' do
    expect([true, false].sample).to be true
  end

  it 'fails 80% of the time' do
    expect(rand < 0.2).to be true
  end

  it 'fails 90% of the time' do
    expect(rand < 0.1).to be true
  end
end
