node default {
}

node 'india_smsfw_stp01' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "welcome to ${fqdn}\n",
  }
}

node /^web/ { 
  include role::app_server
}

node /^db/ {
  include role::db_server
}
