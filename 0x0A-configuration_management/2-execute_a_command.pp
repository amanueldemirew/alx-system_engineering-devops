# killer of processes

exec { 'pkill':
command  => 'pkill killmenow',
provider  => 'shell',
}

