jira-pagerduty-escalation_scripts
---------------------------------

Automate escalation of JIRA issues to PagerDuty!

### Description

This is a set of Bash and Ruby scripts that can be customized to automate the escalation of particular JIRA issues matching a JQL query to PagerDuty. It uses Bob Swift's Atlassian CLI Interface as an API interface into a JIRA instance, and uses the Pagerduty gem as an API interface into PagerDuty. You can also use the Whenever gem in order to setup cron automation, and which is already added to the Gemfile in this repo, but that's optional. 

### Dependencies

-Java Runtime Environment (OpenJDK or Sun JRE; version 6 and above)
-Ruby 2.0 (probably will work on 1.9.3, but was only tested on Ruby 2.0)
-Atlassian CLI Interface (<https://marketplace.atlassian.com/plugins/org.swift.atlassian.cli>)
-Pagerduty gem (<https://github.com/envato/pagerduty>)

### Optional

Whenever gem (<https://github.com/javan/whenever>)

### Credits

Thanks to Bob Swift for the excellent Atlassian CLI Interface, and to the creators and contributors of the Pagerduty gem and the Whenever gem, which have all made automated JIRA-Pagerduty escalation possible and relatively easy to make.

### Notes

This is an initial version that met minimum requirements of a project that I worked on at EFactor (<http://www.efactor.com>). I probably will make some improvements soon when I get some free time.

### Planned Improvements

- Replace jira_info.rb and pagerduty_info.rb with yaml configuration files, possibly using Square's Toggle gem.

### License

The MIT License (MIT)

Copyright (c) 2013 Jonathan Munevar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
