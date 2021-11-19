pushd /vagrant
# build terraform infrastructure with kitchen
bundle exec kitchen converge
# run the kitchen test
bundle exec kitchen verify