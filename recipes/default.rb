include_recipe 'plexapp'


firewall_rule 'plex' do
  protocol :tcp
  port     32400
  command  :allow
end

firewall_rule 'plex-companion' do
  protocol :tcp
  port     3005
  command  :allow
end

firewall_rule 'plex-dlna' do
  protocol :tcp
  port     32469
  command  :allow
end

# sync
directory '/var/lib/music' do
  owner 'root'
  group 'admin'
  mode  '0775'
end

package 'awscli'

directory '/var/lib/plexmediaserver/.aws'

template '/var/lib/plexmediaserver/.aws/credentials' do
  source 'aws_credentials.erb'
  owner 'plex'
  group 'plex'
  mode '0600'
end

cron 'music_sync' do
  minute '0'
  user 'plex'
  home '/var/lib/plexmediaserver'
  command "/usr/bin/aws s3 sync #{node['media']['bucket_url']} /var/lib/music"
end
