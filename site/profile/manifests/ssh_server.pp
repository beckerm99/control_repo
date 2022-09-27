class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHFoW4Ca2rV72Y2QlIJNnEjppp9tk4woLa+AIAnYktQXF2oGDIRYn5r6aAcNvse8wf3qxHWq+2xMmptaqzcqAS2l+NdckI81kp9fZudAmpjc70xT+rj90hoW0YV1IL9djj60OiVl1H7kQeGGoKd6l4s42BbiP0RdAD2X9/SadMA9jUVYscsCBhooIWlTJ5Hy58iyIG6leEBCMwYi1my0HnnumOS6MxuXukJAzyshzk4eDy+NTDA/vg8G3GHvRO/ZisccIcqcKKFUcdV12Lj4xLScJ1cnNGJe2V3dc8bAXXH42Hz/6mVgCdgQoe8Dpf2v/OcEzCJChhX53AKb7SmMBH',
  }  
}
