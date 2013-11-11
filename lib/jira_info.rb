module JiraInfo
  # List of JIRA projects
  JIRA_PROJECT_KEY = {
    'Enter JIRA Project Name here' => 'Enter JIRA Project Key here'
  }

  # JIRA Instance URL
  JIRA_URL = 'Enter JIRA instance URL here'

  # List of utility scripts
  GET_CRITICAL_ISSUES = 'bash ./lib/get_critical_issues.sh'
  GET_IGNORED_ISSUES = 'bash ./lib/get_ignored_issues.sh'
  GET_ISSUE_DESCRIPTION = 'bash ./lib/get_issue_description.sh'
end