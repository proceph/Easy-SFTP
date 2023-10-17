# Easy-SFTP
Scripts for easily deploy SFTP server and adding as many user access as you need.  
Use ./ to execute script, don't forget to check the rights (chmown, chmod + x...)  

Install_SFTP.sh will install OpensshServer and add custom sshd conf file for SFTP user group  

ADD_SFTP_User.sh will create an sftp user with a custom folder. The new user will only be able to access to his own folder, not others.  
