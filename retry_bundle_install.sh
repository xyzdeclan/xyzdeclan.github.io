#!/bin/bash

max_attempts=5
attempt_num=1

until bundle install; do
  if (( attempt_num == max_attempts )); then
    echo "Failed to install gems after $attempt_num attempts."
    exit 1
  fi
  echo "Attempt $attempt_num failed! Trying again in 5 seconds..."
  attempt_num=$((attempt_num + 1))
  sleep 5
done

echo "Gems installed successfully."
