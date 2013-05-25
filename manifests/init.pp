class java {

    case $operatingsystem {
      /^(Debian|Ubuntu)$/:{ 
        package { 'openjdk-6-jdk' : ensure => installed, }
      } 
      default: { 
        package { 'java-1.6.0-openjdk' : ensure => installed, }
        package { 'java-1.6.0-openjdk-devel' : ensure => installed, }
      } 
    }
    
}
