cookbook_file "/tmp/ossec_client.sh" do
  source "ossec_client.sh"
  mode 0755
end

execute "ossec_client.sh" do
  user "root"
  cwd "/tmp"
  environment ({'SERVER' => node['OSSEC server']})
  command "bash ossec_client.sh"
end