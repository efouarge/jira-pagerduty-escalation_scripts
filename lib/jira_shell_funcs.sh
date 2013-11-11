#!/bin/bash
###############################################################################

# Script Name: jira_shell_funcs.sh
# Description: Shell functions for use with Atlassian CLI Interface
# Dependencies: Atlassian CLI Interface, some JVM (version 6+)

###############################################################################
# Read-only & Global Variable Declarations
###############################################################################

declare -r atlassian_cli="Enter path to Atlassian CLI Tools here"
declare -r jira_cli="$atlassian_cli jira"
# show_stoppers
# needs_attention

###############################################################################
# Function Declarations
###############################################################################

get_critical_issues()
{
    local project="$1"

    if [ -z "$project" ]; then
        echo "[function => 'get_critical_issues', error => 'No project key given']"
        return 1
    fi

    show_stoppers=$($jira_cli --action getIssueList --search "project = $project AND status = 'Open' AND resolution = 'Unresolved' AND priority = 'Critical' ORDER BY 'created' ASC" --outputFormat 101 | tail -n +2)

    return 0
}

get_ignored_issues()
{
    local project="$1"

    if [ -z "$project" ]; then
        echo "[function => 'get_ignored_issues', error => 'No project key given']"
        return 1
    fi

    needs_attention=$($jira_cli --action getIssueList --search "project = $project AND status = 'Open' AND resolution = 'Unresolved' AND created <= '-3h'  ORDER BY 'created' ASC" --outputFormat 101 | tail -n +2)

    return 0
}

get_issue_description()
{
    local issue="$1"

    if [ -z "issue" ]; then
        echo "[function => 'get_issue_description', warning => 'No issue given']"
        return 1
    fi

    issue_description=$($jira_cli --action getFieldValue --issue "$issue" --field 'Summary' | tail -n +2)

    return 0
}

print_list()
{
    local list="$@"

    if [ -z "$list" ]; then
        echo "[function => 'print_list', warning => 'Empty list given']"
        return 1
    fi

    for item in $list; do
        printf "$item\n"
    done

    return 0
}

###############################################################################
# End of Script
###############################################################################
