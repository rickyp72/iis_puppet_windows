# Class: aspnetmvc4
#
# This module manages aspnetmvc4
#
# Parameters: none
#
# Actions: install aspnetmvc4 and starts service
#
# Requires: see Modulefile
#
# Sample Usage:
#
class aspnetmvc4 {
  include aspnetmvc4::install, aspnetmvc4::service
}
