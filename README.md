## This folder contains the end-to-end setup for:
- Set up event listener and trigger to listen PR open action
- Start a Github Check
- Run some dummy script simulating a test run
- Update the status of the Github Check based on the test results

## Required k8s cluster setup
### Event Listener
The PR comment related triggers uses a repo-level webhook, which requires repo webhook secret

```bash
k create secret generic github-secret --from-literal=secretToken=<REPO-WEBHOOK-TOKEN>
```

The PR creation related triggers uses a github-app level webhook, which requires a github app webhook secret

``` bash
k create secret generic github-app-webhook-secret --from-literal=secretToken=<REPO-WEBHOOK-TOKEN>
```

### Post Comment Pipeline
#### github-add-comment task (not required for github check related)
The [github-add-comment task](https://hub.tekton.dev/tekton/task/github-add-comment) requires a secret called `github` containing your personal account token to post a comment to a PR:

``` bash
kubectl create secret generic github --from-literal token=<PERSONAL-TOKEN>
```

### Post Check Pipeline
#### github-app-token
The [github-app-token task](https://hub.tekton.dev/tekton/task/github-app-token) requires a secret called `github-app-secret` containing the app private key to generate JWT token to interact with GitHub later:

``` bash
k create secret generic github-app-secret --from-file=private.key=./github-checks/privatekey.txt
```


