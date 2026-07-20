#Configures the SSH client to use ~/.ssh/school as the identity file
#xand refuse password authentication.
file_line { 'Declare identity file':
  path => '/root/.ssh/config',
  line => 'IdentityFile ~/.ssh/school',
}

file_line { 'Turn off passwd auth':
  path => '/root/.ssh/config',
  line => 'PasswordAuthentication no',
}
