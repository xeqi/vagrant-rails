class rails::dependencies {
  package { "build-essential": ensure => installed }
#  package { "libmysqlclient-dev": ensure => installed }
  package { "libsqlite3-dev": ensure => installed }
  package { "bundler": ensure => installed, provider => gem }

	# nokogiri
	package { "libxslt-dev": ensure => installed }
	package { "libxml2-dev": ensure => installed }
}

