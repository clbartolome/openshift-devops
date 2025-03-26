# openshift-devops
Repository with an application lifecycle overview


> [!IMPORTANT]  
> Last working versions: 
> - OpenShift: 4.18.4
> - OpenShift GitOps: 1.15.1
> - OpenShift Pipelines: 1.17.1 

## Install

### Pre-requisites
- OpenShift GitOps Operator installed with default configuration
- OpenShift Pipelines Operator installed with default configuration


### Deploy

- Open a terminal
- Login into OpenShift
- Access installation->ansible-navigator: `cd installation/ansible-navigator`
- Run installation:
```sh
OPENSHIFT_TOKEN=$(oc whoami --show-token)
CLUSTER_DOMAIN=$(oc whoami --show-server | sed 's~https://api\.~~' | sed 's~:.*~~')
ansible-navigator run ../install.yaml -m stdout \
    -e "ocp_host=$CLUSTER_DOMAIN" \
    -e "api_token=$OPENSHIFT_TOKEN"
```
- Review installed resources in final playbook message

### Uninstall

- Open a terminal
- Login into OpenShift
- Access installation->ansible-navigator: `cd installation/ansible-navigator`
- Run uninstallation: 
```sh
OPENSHIFT_TOKEN=$(oc whoami --show-token)
CLUSTER_DOMAIN=$(oc whoami --show-server | sed 's~https://api\.~~' | sed 's~:.*~~')
ansible-navigator run ../uninstall.yaml -m stdout \
    -e "ocp_host=$CLUSTER_DOMAIN" \
    -e "api_token=$OPENSHIFT_TOKEN"
```

