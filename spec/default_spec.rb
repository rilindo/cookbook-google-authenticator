require 'chefspec'

describe 'google-authenticator::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs google-authenticator package' do
    expect(chef_run).to install_package 'google-authenticator'
  end
end
