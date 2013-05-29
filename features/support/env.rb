require 'pinocchio'
require 'pinocchio/cucumber'

Pinocchio.config do |config|
  config.ssh = :on_fail
end
