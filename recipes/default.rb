#
# Cookbook:: deploy-web-artifact
# Recipe:: default
#

raise("deploy-web-artifact::default - Missing attributes") if !node.key?('deploy-web-artifact')
raise("deploy-web-artifact::default - Missing path attribute") if !node['deploy-web-artifact'].key?('path')
raise("deploy-web-artifact::default - Missing owner attribute") if !node['deploy-web-artifact'].key?('owner')
raise("deploy-web-artifact::default - Missing group attribute") if !node['deploy-web-artifact'].key?('group')
raise("deploy-web-artifact::default - Missing mode attribute") if !node['deploy-web-artifact'].key?('mode')

template "#{node['deploy-web-artifact']['path']}/deploy-web-artifact.sh" do
  source 'deploy-web-artifact.sh.erb'
  owner node['deploy-web-artifact']['owner']
  group node['deploy-web-artifact']['group']
  mode node['deploy-web-artifact']['mode']
  action :create_if_missing
end
