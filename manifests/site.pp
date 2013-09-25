# Main Puppet manifest for configuration management of
# BBC Worldwide web hosting environments
#
# Created Jan 2012, Ben Priestman, BBC WW WebOps


########################################################
#####        Site-specific logic                    ####
########################################################




# node configurations are stored in separate files. Import these.
import 'nodetemplates/*'
import 'nodes/*'
