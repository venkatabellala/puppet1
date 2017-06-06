class apache inherits motd {
  package { 'httpd':
        ensure => present,
    #   before => Service{'httpd'],
          }
  file {'/var/www/html/index.html':
  source => 'puppet:///modules/apache/index.html',
  notify => Service['httpd'],
       }
  service {'httpd':
   ensure => running,
   require => Package['httpd'],
          }
   $name1 = $name1
   notify {"game is ${name1}":}
} 
