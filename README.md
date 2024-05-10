# openshift-devops
Repository with an application lifecycle overview

## Installation

Configure installation playbook if needed (`installation/vars.yaml`):

```yaml
demoNamespaces:
  # Exclude operators installation namespaces
  - name: test
  ...

operators:
  - name: <operator name>
    namespace: <operator namespace>
    channel: <operator channel>
    source: <operator source>
    sourcenamespace: <operator source namespace>
    clusterwide: <true/false>
  ...
```

Login in an OpenShift cluster and run the installation playbook:

```sh
ansible-playbook installation/main.yaml
```
