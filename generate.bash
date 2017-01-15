#!/bin/bash

scope_files() {
  for file in $@; do
    cat "$file"
    echo "---"
  done
}

scope_files \
  gitlab/redis-* \
  gitlab/postgresql-* \
  gitlab/gitlab-* \
  gitlab-runner/gitlab-runner-* > gitlab-full.yml

scope_files \
  load-balancer/lego/* \
  load-balancer/nginx/* > load-balancer-full.yml

scope_files ingress/* > gitlab-ingress.yml
