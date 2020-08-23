# kind skaffold

## kind

```
brew install kind
```

```
kind create cluster --name kind-skaffold
```

## skaffold

```
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-darwin-amd64 && \
sudo install skaffold /usr/local/bin/
```

```
skaffold init > skaffold.yaml
```

```
skaffold dev --port-fard
```