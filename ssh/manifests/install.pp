class ssh::install {
       if $::hostname == server2{
             $pack = 'tree'}
       else {
             $pack = 'ftp'
            }
      
      #  
      #  Case $::osfamily {
      #         'RedhHat': {$pack = 'openssh'}
      #         'Debian' : {$pack = 'ssh'}
      #          default : {warning('os not supported')}
      # }

      #  $pack = $::osfamily? {
      #   'RedHat' => 'openssh',
      #   'Debian' => 'ssh',
      #   } 
         package {$pack:
                ensure => present,
                 }
}
