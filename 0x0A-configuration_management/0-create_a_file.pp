# Description: This manifest creates a file named "school" in the "/tmp" directory
#              with specific permissions, ownership, and content.

file { 'school':
  ensure  => 'file',
  path    => '/tmp/school',
  content => 'I love Puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
}
