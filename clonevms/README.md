
# PureTEC VMware Cloning playbook
This playbook will create a new VM from template in VCenter. It will use the clone.csv file
to configure variables about the VM. You can also use the file to remove the VM by changing variables 
from "Poweredon" to "absent", and from "present" to "absent". 

It also will add a DNS entry to the VM using the provided CSV. 
You need to add your IPAM credentials the the infoblox.yaml. Users credentials are members of the 
infoblox_admins group on PureTEC AD

# Using the CSV 
You can add new items in the "clone.csv" file ensure the format is as follows
hname,address,gate,vlan,status,frc,temp,infstate

- status=powerdon/absent   add/remove vm from vcenter
- infstate=present/absent  add/remove dns records
- vlan=portgroup in vcenter

# Running the playbook
ansible-playbook deployvms.yaml 
- clonevm.yaml creates vms based on data in the csv
- infoadd.yaml creates dns records based on data in the csv

# Requires the following library to run
https://github.com/mkouhei/ansible-role-includecsv
