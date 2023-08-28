# Puppet manifest to create an SSH config file
$home = $facts['home']
file { '/root/.ssh/config':
  ensure  => 'file',
  path    => "/root/.ssh/config",
  mode    => '0600',
  content => "\
# SSH configuration for remote host
host 34.203.201.237
    PasswordAuthentication no
    IdentityFile ~/.ssh/school
    UserKnownHostsFile ${home}/.ssh/known_hosts
    StrictHostKeyChecking no
"
}
