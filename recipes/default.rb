include_recipe 'plexapp'


firewall_rule 'plex' do
  protocol :tcp
  port     32400
  action   :allow
end

directory '/var/lib/music' do
  owner 'root'
  group 'admin'
  mode '0775'
end
