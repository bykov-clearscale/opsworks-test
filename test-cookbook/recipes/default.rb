cookbook_file "/tmp/ossec_client.sh" do
  source "ossec_client.sh"
  mode 0755
end

execute "ossec_client.sh" do
  user "root"
  cwd "/tmp"
  environment ({'OSSEC_SERVER_IP' => node['OSSEC server']})
  environment ({'AGENT_PROFILE' => node['app-instances']})
  command "bash ossec_client.sh"
end