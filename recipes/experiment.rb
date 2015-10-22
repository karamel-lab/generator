
script 'run_experiment' do
  cwd "/tmp"
  user node['generator']['user']
  group node['generator']['group']
  interpreter "bash"
  code <<-EOM
rm -f /tmp/input.txt

base64 /dev/urandom | head -c 128000000 > /tmp/input.txt

/srv/hadoop/bin/hdfs dfs -mkdir -p /words

/srv/hadoop/bin/hdfs dfs -copyFromLocal /tmp/input.txt /words/#{node.name}
  EOM
end

