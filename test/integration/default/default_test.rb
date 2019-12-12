# # encoding: utf-8

# Inspec test for recipe zookeeper::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('zookeeperd') do
  it { should be_installed }
end

describe upstart_service('zookeeper') do
   it { should be_enabled }
   it { should be_running }
end

describe command('curl localhost') do
    its('stdout') { should match(/Hello ChefConf2019!!/)}
end
