# this module sets up resolv.conf
class resolv (
  $domainname     = hiera('domainname', $::domain),
  $searchpath     = hiera('searchpath', [$::domain]),
  $nameservers    = hiera('nameservers', ['8.8.8.8', '8.8.4.4'])
) {

  $template_path  = 'resolv/resolv.conf.erb'
  file { '/etc/resolv.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template($template_path),
  }

}
