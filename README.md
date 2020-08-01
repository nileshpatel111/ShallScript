---To SSH into one machine to another machine---
 
1) Machine1
2) Machine2

you have to login to machine1 and become /root using command 
   $ sudu -i

Afer becoming root, You have to enable "PasswordAuthentication no" to "PasswordAuthentication yes"

For this you need to go to configure sshd_config file.

   $ vi /etc/ssh/sshd_config
   $  PasswordAuthentication no  ( change it to "yes")
   $ service sshd reload
   $ service sshd restart

Now, You have to create user, let's take devops as user. 

   $ adduser devops (Give password)

now you have user called devops. now we have to add this user as sudo user to provide sudo privilages

   $ visudo
   $ devops ALL(ALL:ALL) PASSWD:ALL

Save and exit.

Do the same thing in Machine2 as well

Once you are done with Machine2, It is time to do ssh between two machins

Login to Machine1 as devops user
   $ su devops
   
Now create private ans public key (SSH-Keypair)

   $ ssh-keygen (use defalt location /home/devops/.ssh/id_rsa and don't give password)

you will have id_rsa and id_rsa.pub. We have to copy the id_rsa.pub to Machine2's authorized_keys

   $ ssh-copy-id -i /home/devops/.ssh/id_rsa devops@ip_address of Machine2

You have successfully made ssh connection between two machine now you can login to Machine2 using
   $ ssh devops@ip_addess
