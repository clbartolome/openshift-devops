# openshift-devops
Repository with an application lifecycle overview

## Install

Configure installation playbook if needed (`installation/vars.yaml`):

```yaml
demoNamespaces:
  # Exclude operators installation namespaces
  - name: test
  ...

imagesSource:
  # Configure if you need namespaces to pull images from an specific one
  enabled: true
  namespace: <namespace>

operators:
  - name: <operator name>
    namespace: <operator namespace>
    channel: <operator channel>
    source: <operator source>
    sourcenamespace: <operator source namespace>
    clusterwide: <true/false>
  ...
```

Login in an OpenShift cluster and run (from installation/ansible-navigator folder):

```sh
ansible-navigator run ../install_demo.yaml -m stdout \
  -e "ocp_host=<** e.g.: server.domain.com **>" \
  -e "api_token=<** e.g.: sha256~..... **>"
```

## Uninstall

Use same configuration as in Installation.

IMPORTANT: Operators will not be uninstalled

Login in an OpenShift cluster and run (from installation/ansible-navigator folder):

```sh
ansible-navigator run ../uninstall_demo.yaml -m stdout \
  -e "ocp_host=<** e.g.: server.domain.com **>" \
  -e "api_token=<** e.g.: sha256~..... **>"
```

