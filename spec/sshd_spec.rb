require 'chefspec'

describe 'google-authenticator::sshd' do

  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  
  it 'runs ruby block to updated sshd code' do
    expect(chef_run).to run_ruby_block 'edit-sshd-pamd'
  end
end