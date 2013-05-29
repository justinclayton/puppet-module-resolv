Feature: resolv
  In order to use DNS
  As a sysadmin
  I want a server configured with the right nameservers

Scenario: Provision a resolv server
  Given a centos6 machine
  When I apply the resolv module
  Then nothing bad should happen