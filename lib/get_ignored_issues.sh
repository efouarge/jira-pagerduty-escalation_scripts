#/bin/bash
###############################################################################

# Script Name: get_ignored_issues.sh
# Description: Bash script that retrieves a newline delimited list of JIRA
#              tickets with 'Time Created' greater or equal to 3 hours.
# Dependencies: jira_shell_funcs.sh

###############################################################################
# Script Body
###############################################################################

# include necessary shell functions
source ./lib/jira_shell_funcs.sh

get_ignored_issues "$1"
print_list "$needs_attention"

###############################################################################
# End of Script
###############################################################################
