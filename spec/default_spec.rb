require 'chefspec'

describe 'google-authenticator::default' do
  
  let(:chef_run) do
    runner = ChefSpec::ChefRunner.new('platform' => 'fedora', 'version'=> '17')
    runner.converge('google-authenticator::default')
  end
  
  it 'installs google-authenticator package' do
    expect(chef_run).to install_package 'google-authenticator'
  end
end