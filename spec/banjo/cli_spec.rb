require 'spec_helper'

describe Banjo::Cli do
  it 'has a version number' do
    expect(Banjo::Cli::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
