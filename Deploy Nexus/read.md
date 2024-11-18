# Automate Nexus Deployment

###  we did this manually before
- Create a instance 
- ssh into the server and executed 
- Download nexux binary and unpack 
- Run Nexus application using Nesus User

### Automate these Steps Using Ansible
- Execute repeatedly

------------------------------------
Manual Installation, Manual configuration ----> Ansible Playbook

  

 
  ### blockinfile module
  refer line 89
  - insert/update/remove a multi-line text surrounded by customizable marker lines
  ```yaml
  #run_as_user=""
# BEGIN ANSIBLE MANAGED BLOCK
run_as_user="nexus"
# END ANSIBLE MANAGED BLOCK
```

### lineinfile modeule
- ensure a particular line is in al file or replace a existing line using regex
- Useful when you want to change a "`single line`" in file only 
- See `"replace"` modeule to change multiple lines

 