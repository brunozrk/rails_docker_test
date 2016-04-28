#!/bin/bash

ssh root@104.236.34.118 \
  "cd rails_docker_test \
  && git pull \
  && docker-compose run app bundle exec rake assets:precompile \
  && docker-compose run app bundle exec rake db:migrate \
  && docker-compose restart
