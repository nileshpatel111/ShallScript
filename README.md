To create ansible user with sudo permission.
become root user

   $ adduser ansible
   - This command will ask password provide it
   
once you created user, next thing is you have to add this user to VISUDO file

   $ visuo
   - mention your user (ansible) to %sudo group
   $ ansible  ALL=(ALL:ALL) NOPASSWD:ALL

Save and exit
Now when you login to this user, It should ask password for ansible user to that we have to enable PasswordAuthenticatio

   $ vi /etc/ssh/sshd_config
   $ PasswordAuthentication yes
   
Save and restart sshd

   $ service sshd restart
   
Nowyou can login to user user and do your task
   
