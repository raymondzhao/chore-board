#!/bin/bash
set -e

# flags

# --reset
RESET_DB=false

# parse flags
for arg in "$@"; do
    case $arg in
        --reset)
            RESET_DB=true
            shift
            ;;
    esac
done

if ["$RESET_DB" = true]; then
    echo "Reconstructing db and running migrations..."
    bundle exec rails db:drop db:create db:migrate
else
    echo "Running migrations..."
    bundle exec rails db:migrate
fi

echo "Seeding database..."
bundle exec rails db:seed

echo "Setup complete :)"