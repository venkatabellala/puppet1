class ftp {
       package {'vsftpd':
       ensure => present,
         }
      file {'/etc/vsftpd/vsftpd.conf':
      source => 'puppet:///modules/ftp/vsftpd.conf',
       }
      service { 'vsftpd':
      ensure => running,
       }
}
