# Patch / Diff Research

## Commands

`make reset` will reset everything

`make generate` generates new XML in `/final` and in `/generated`

`make create_patch` creates a patch between and documents the diff between the `/final` and `/generated` folders.

`make apply_patch` applies the patch to the files in `/final`.


## Steps for creating a new proxy

1. generate new proxy and policy (`make generate`)
2. go into `/final` and apply changes manually to the xml files
3. create a patch (`make create_patch`)

## Steps for updating a proxy

1. generate a new proxy and policy (`make generate`)
2. apply the patch (`make apply_patch`)