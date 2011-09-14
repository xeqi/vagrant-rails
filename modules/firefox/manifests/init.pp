class firefox {

  exec { "apt-update":
    command => "/usr/bin/apt-get update",
		refreshonly => true
  }

  package { "firefox":
    ensure => installed,
    require => Exec['apt-update']
  }

  package { "xvfb":
    ensure => installed,
    require => Exec['apt-update']
  }
}
