# This file describes the configuration of individual nodes
# that might be powered up as local VMs in a test environment
#
# Created Sept 2013, Ricky Parkinson, BBC WW WebOps



########################################################
#####        Windows test IIS servers               ####
########################################################

node 'WIN-IIS1.localdomain' inherits devnode {
  
  # added by me to setup iis environment
include windows-iis
include aspnetmvc4

#    user {'bill':
#      ensure => present,
#      password => 'Sfdjkl@412jfjd'
#    }
    ## IIS Test
    
#    include windows-iis
#    
#    class { 'windows-sitecore':
#    type => 'web',
#    instance => 'staging',
#    db_host => 'ec2-54-221-216-155.compute-1.amazonaws.com',
#  }



#file {'c:/puppet_iis_demo':
#        ensure          => directory,
#      }
#
#      file {'c:/puppet_iis_demo/default.aspx':
#        content         =>
#'<%@ Page Language="C#" %>
#<!DOCTYPE html>
#<html>
#<head>
#    <title>Managed by Puppet</title>
#</head>
#<body>
#    <h1>Managed by Puppet</h1>
#
#    <strong>Time:</strong> <%= DateTime.UtcNow.ToString("s") + "Z" %>
#</body>
#</html>'
#      }
#
#      iis_apppool {'PuppetIisDemo':
#        ensure                => present,
#        managedpipelinemode   => 'Integrated',
#        managedruntimeversion => 'v2.0',
#      }
#
#      iis_site {'PuppetIisDemo':
#        ensure          => present,
#        bindings        => ["http/*:25999:"],
#      }
#
#      iis_app {'PuppetIisDemo/':
#        ensure          => present,
#        applicationpool => 'PuppetIisDemo',
#      }
#
#      iis_vdir {'PuppetIisDemo/':
#        ensure          => present,
#        iis_app         => 'PuppetIisDemo/',
#        physicalpath    => 'c:\puppet_iis_demo'
#      }

}



    
  

########################################################
  