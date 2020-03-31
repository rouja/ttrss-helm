# ttrss-helm

This chart deploys ttrss on kubernetes. It uses [this docker image](https://github.com/rouja/ttrss-docker) for tttrss.

## Prerequisites

- In oder to use this chart you need to have a storage class.

## Installation

```console
git clone https://github.com/rouja/ttrss-helm
kubectl create ns ttrss
cat<<EOF > values.yaml
config:
  # Uncomment these lines and change the password !
  # dbPass: changeme
  # dbName: ttrss
  # dbUser: ttrss

pgsql:
  persistence:
    enabled: true
    size: 10Gi
    accessMode: ReadWriteOnce

ttrss:
  persistence:
    size: 100Gi
nginx:
  ingress:    
    enabled: true
    # If you have cert-manager you can uncomment theses lines
    # annotations:
    #  cert-manager.io/cluster-issuer: letsencrypt-stage
    # tls:
    #   - hosts:
    #     - ttrss.example.com
    #     secretName: ttrss-tls-certificate
    hosts:
      - ttrss.example.com
EOF
# Edit the config section in the values.yaml
helm upgrade -f values.yaml --install -n ttrss ttrss ttrss-helm/
```

When the chart is deployed, it will show you the informations that you will need to enter in the ttrss install form.
