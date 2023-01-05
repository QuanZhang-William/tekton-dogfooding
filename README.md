# Automated Test Infra for Tekton Catalogs
This repo holds an end-to-end automated test infra setup example for Tekton Catalogs. Catalog authors are welcomed to clone this template and build automted tests for your Catalogs on top of it. 

## EventListener & Trigger
The `eventlistener.yaml` file defines the event listener that listens specific events from Github to trigger the corresponding tests. There are 4 `triggers` defined:

### open-pr-build-test
This `trigger` listens for Github pull request `opened`, `synchronize`, `reopened` events, and triggers the `build test` for the Catalog.

### pull-build-test
This `trigger` listens for Github comment `/test pull-tekton-build-test` event in the pull request, and triggers the `build test` for the Catalog.

### open-pr-integration-test
This `trigger` listens for Github pull request `opened`, `synchronize`, `reopened` events, and triggers the `integration test` for the Catalog.

### pull-integration-test
This `trigger` listens for Github comment `/test pull-tekton-integration-test` event in the pull request, and triggers the `integration test` for the Catalog.

## Build Test
The build tests SHOULD check the syntax of the yaml files and the contract of the Catalog. The resources for build tests are placed under the `./build-tests/` folder.

[Catlin](https://github.com/tektoncd/catlin) is a command-line tool that lints Tekton Resources and Catalogs. This template integrates `Catlin` to the build test pipelines to lint the target Catalog.

## Integration Test
The integration tests SHOULD run the catalog resource from end to end. The resources for build tests are placed under the `./integration-tests/` folder.

TODO...

## Get Started
A get started tutorial will be added to help Catalog authors to set up automated tests for your own catalogs.

### Prerequisite
#### K8s Cluster Setup
#### Github App Setup
#### Github Webhook Setup