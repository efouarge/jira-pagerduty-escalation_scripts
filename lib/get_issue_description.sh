#/bin/bash
###############################################################################

# Script Name: get_issue_description.sh
# Description: Bash shell script that retrieves the description (title) of
#              a JIRA issue/ticket.
# Dependencies: jira_shell_funcs.sh

###############################################################################
# Script body
###############################################################################

# include necessary shell functions
source ./lib/jira_shell_funcs.sh

get_issue_description "$1"
echo "$issue_description"

###############################################################################
# End of Script
###############################################################################
