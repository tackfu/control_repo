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
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDFxbiYWFAzX+GCfiGV8mQRWJfmx63VfYydtSZdvrHhJp3ccxAuXuQisz5Rz9XA+or/+1Yj8KTMlw7Wq623CMyvNG2tRLbjlH0jcvfxxlPMkjrG4Qx7baJ5kWZ7WCP6Y4LE805Bu06uggQmYsTqsuOsYDXhr4ezVtnVtBCDGeEUc5FtQBzs0GM9E35ULzX1EJRMTDb+BhbrCZ22frU9DGBMVH5Tcv8x/GH7ED9FClGJW2Py/fYZ8qs95Y/kCwO4XWtN28euJrRMMds7Z5SFTHxMvTDYoGpQpUzVKr/AcpUCuydUy0G3EPwOReFHljdMxav/QW3vu0zxhymq83nVsFnp',
  }
}
