# Description: This manifest installs flask with the version 2.1.0 from pip3.

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
