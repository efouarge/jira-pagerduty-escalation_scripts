#!/bin/bash
###############################################################################
#
# Script Name: get_critical_issues.sh
# Description: Bash script that retrieves a newline delimited list of all JIRA
#              tickets that have Critical priority
# Dependencies: jira_shell_funcs.sh
# Note: This script requires a valid JIRA Project Key to be passed as the
#       first argument when used
#
###############################################################################
# Script Body
###############################################################################

# include necessary shell functions
source ./lib/jira_shell_funcs.sh

get_critical_issues "$1"
print_list "$show_stoppers"

###############################################################################
# End of Script
###############################################################################
