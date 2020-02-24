## Ansible Pull Demonstrate , How it Works 

Ansible Pull will pull a git repo and run the playbook locally on that server.

```
$ sudo yum install ansible git -y 
```

We can run this to run a playbook.

```
$ echo localhost >/tmp/hosts
$ ansible-pull -i /tmp/hosts -U https://github.com/linuxautomations/just-examples.git ansible/pull-simple-demo/