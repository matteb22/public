# Recipe to update your Seamonkey Browser.
#Update the variables with proper values according to your environment.

node.run_state['URL'] = 'https://archive.mozilla.org/pub/seamonkey/releases/2.46/contrib/seamonkey-2.46.en-US.linux-x86_64.tar.bz2'
node.run_state['file_name'] = 'seamonkey-2.46.en-US.linux-x86_64.tar.bz2'
node.run_state['dest_dir'] = '/usr/local/seamonkey2/'

remote_file node.run_state['dest_dir'] + node.run_state['file_name'] do
  source node.run_state['URL']
  owner 'mbottini'
  group 'mbottini'
  mode '0644'
  action :create
end

execute 'extract_some_tar' do
  command 'tar jxvf '  + node.run_state['file_name']
  cwd node.run_state['dest_dir']
#  not_if { File.exists?("/file/contained/in/tar/here") }
end
