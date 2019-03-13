node default {
}

node 'india_smsfw_stp01' {
  include role::master_server
  file {'/root/README' :
    ensure ==> present,
    content ==> $fqdn,
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
