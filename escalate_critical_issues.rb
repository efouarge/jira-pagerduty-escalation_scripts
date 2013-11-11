#!/usr/bin/env ruby

require 'pagerduty'
require_relative 'lib/jira_info.rb'
require_relative 'lib/jira_utils.rb'
require_relative 'lib/pagerduty_info.rb'
require_relative 'lib/pagerduty_utils.rb'

puts "#{Time.now}\n Escalating critical issues..."
jira = JiraUtils.new(JiraInfo::GET_CRITICAL_ISSUES, JiraInfo::JIRA_PROJECT_KEY['Enter JIRA Project Name here'])
issue_list = jira.get_issue_list
issue_count = issue_list.count

if issue_count == 0
  puts "There are no open critical issues."
  exit
elsif issue_count == 1
  puts "There is one critical issue!"
else
  puts "There are #{issue_count} critical issues!"
end

jira.get_issue_descriptions
issues = jira.get_issues
jira.print_issues
pagerduty = PagerdutyUtils.new(PagerdutyInfo::PAGERDUTY_SERVICE_KEY['Enter PagerDuty Service Name here'], issues)
pagerduty.send_incidents
