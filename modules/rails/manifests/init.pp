class rails {
  include rails::dependencies

  exec { "bundle":
    command => "bundle install --gemfile /rails_app/Gemfile",
    path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/ruby/bin",
    user => root,
    require => Class["rails::dependencies"]
  }

  file { '/etc/init/rails.conf':
    ensure => present,
    content => template('rails/rails.conf')
  }

  service { 'rails':
    ensure => running,
    provider => upstart,
    require => [ Exec['bundle'], File['/etc/init/rails.conf'] ]
  }
}
