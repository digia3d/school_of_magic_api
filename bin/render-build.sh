#!/usr/bin/env bash
# exit on error
set -o errexit

echo "🌙 Setting Nokogiri to use system libraries..."
bundle config set --local build.nokogiri --use-system-libraries
bundle config set --local force_ruby_platform true

echo "🌱 Installing gems..."
bundle install

bundle exec rake db:migrate
bundle exec rake db:seed
