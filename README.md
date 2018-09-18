# Revive Adserver - Docker 

I was inspired to create a slightly different version of https://github.com/Delermando/docker-revive to test out Revive Adserver.

# Implementation

## Caddy

This revision contains Caddy allowing you to run automated SSL certs on a live environment.

## Revive

Updated to use 4.1.4 of Revive Adserver

## Usage

```make dev``` - Brings up a non detached dev environment
```make prod``` - Brings up a detached environment using the docker-prod.yml for SSL.
```make down``` - Brings down the docker instances
```make prod-dev``` - As prod but non detached

