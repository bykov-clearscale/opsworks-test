cookbook_file "/tmp/ossec_client.sh" do
  source "ossec_client.sh"
  mode 0755
end

execute "ossec_client.sh $SERVER $PROFILE" do
  user "root"
  cwd "/tmp"
  command "./ossec_client.sh"
end