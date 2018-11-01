- name: modify existing VM
  hosts: localhost
  connection: local
  gather_facts: no
  become: false
  vars:
    vcenter_ip: vcsa.mcit.local
    vcenter_username: cfadmin@vsphere.local
    vcenter_password: Redhat@123
    vcenter_cluster: CF_POC
    vcenter_dc: MCIT_DC
    folder: /cf
    list: "{{ var10 }}"
  tasks:
    - name: stop VM
      vmware_guest: 
        hostname: "{{ vcenter_ip }}"
        username: "{{ vcenter_username }}"
        password: "{{ vcenter_password }}"
        datacenter: "{{ vcenter_dc }}"
        cluster: "{{ vcenter_cluster }}"
        folder: "{{ folder }}"
        validate_certs: false
        state: "poweredoff"
        name: "{{ item[0] }}"
      loop: "{{ mylist|default([]) }}"
      when:  item is defined
    - name: modify VM
      vmware_guest:
        hostname: "{{ vcenter_ip }}"
        username: "{{ vcenter_username }}"
        password: "{{ vcenter_password }}"
        datacenter: "{{ vcenter_dc }}"
        cluster: "{{ vcenter_cluster }}"
        folder: "{{ folder }}"
        validate_certs: false
        state: "present"
        name: "{{ item[0] }}"
        hardware:
          memory_mb: "{{ item[1] }}"
          num_cpus:  "{{ item[2] }}"
        networks:
        - name: "{{ item[3] }}"
      loop: "{{ list|default([]) }}"
      when:  item is defined
