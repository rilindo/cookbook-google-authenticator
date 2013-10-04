require 'chefspec'

describe 'google-authenticator::sshd' do
  
  let(:chef_run) do
    runner = ChefSpec::ChefRunner.new('platform' => 'fedora', 'version'=> '17')
    runner.converge('google-authenticator::sshd')
  end

  
  it 'runs ruby block to updated sshd code' do
    expect(chef_run).to execute_ruby_block 'edit-sshd-pamd'
  end
end