# openshift-devops
Repository with an application lifecycle overview


> [!IMPORTANT]  
> Last working versions: 
> - OpenShift: 4.16.13
> - OpenShift GitOps: 1.14.0
> - OpenShift Pipelines: 1.15.1 

## Install

### Pre-requisites
- OpenShift GitOps Operator installed with default configuration
- OpenShift Pipelines Operator installed with default configuration


### Deployment
- Open a terminal
- Access installation->ansible-navigator: `cd installation/ansible-navigator`
- Run installation:
```sh
ansible-navigator run ../install.yaml -m stdout \
    -e "ocp_host=<** e.g.: server.domain.com **>" \
    -e "api_token=<** e.g.: sha256~..... **>"
```
- Review installed resources in final playbook message

### Uninstall

- Open a terminal
- Access installation->ansible-navigator: `cd installation/ansible-navigator`
- Run uninstallation: 
```sh
ansible-navigator run ../uninstall.yaml -m stdout \
    -e "ocp_host=<** e.g.: server.domain.com **>" \
    -e "api_token=<** e.g.: sha256~..... **>"
```

