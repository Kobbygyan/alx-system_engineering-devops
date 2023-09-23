# call pkill
exec { 'kill_killmenow':
  command     => 'pkill -f "killmenow"',
  path        => ['/bin', '/usr/bin', '/usr/local/bin'], # Include the directories containing pkill
  refreshonly => true, # Only run when notified by another resource
  onlyif      => 'pgrep -f "killmenow"', # Check if the process is running before trying to kill it
}
