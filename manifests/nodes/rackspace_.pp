




########################################################
#####        WSpace Windows IIS servers             ####
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

#      iis_apppool {'Gateway':
#        ensure                => present,
#        managedpipelinemode   => 'Integrated',
#        managedruntimeversion => 'v2.0',
#      }
#
#      iis_site {'Gateway':
#        ensure          => present,
#        bindings        => ["http/*:8000:"],
#      }
#
#      iis_site {'Gateway':
#        ensure          => present,
#        bindings        => ["http/*:80:"],
#      }
#
#      iis_site {'Gateway':
#        ensure          => present,
#        bindings        => ["http/*wspace-uat:80:"],
#      }
#
#      iis_app {'Gateway/':
#        ensure          => present,
#        applicationpool => 'Gateway',
#      }
#
#      iis_vdir {'Gateway/':
#        ensure          => present,
#        iis_app         => 'Gateway/',
#        physicalpath    => 'c:inetpub\wwwroot\gateway'
#      }

  
}
