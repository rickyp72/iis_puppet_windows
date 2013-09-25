# This file describes the configuration of individual nodes
# in the BBC Worldwide Rackspace Account 1012610 environments
#
# Created Jan 2012, Ben Priestman, BBC WW WebOps



########################################################
#####       WSpace IIS Servers                     ####
########################################################


#node 'WGB01WA6005.bbc.worldwide.co.uk' inherits systestnode {
#include windows-iis
#include aspnetmvc4
#  
#}

node 'WGB01WA7020.worldwide.bbc.co.uk' inherits uatnode {
include windows-iis
include aspnetmvc4

  
}

node 'WGB01WA7019.worldwide.bbc.co.uk' inherits uatnode {
include windows-iis
include aspnetmvc4

  
}


########################################################
