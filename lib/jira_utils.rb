class JiraUtils
  def initialize(issue_filter, project_key)
    @issue_filter = issue_filter
    @project_key = project_key
    @issue_list = Array.new
    @issue_descriptions = Array.new
    @issues = Hash.new
  end
  def get_issue_list
    @issue_list = %x(#{@issue_filter} #{@project_key})
    @issue_list = @issue_list.split(/\n/)
  end
  def get_issue_descriptions
    @issue_list.each do |issue_key|
      @issue_descriptions.push(%x(#{JiraInfo::GET_ISSUE_DESCRIPTION} #{issue_key}))
    end
    @issue_descriptions
  end
  def get_issues
    @issues = Hash[@issue_list.zip(@issue_descriptions)]
  end
  def print_issues
    @issues.each do |issue_key, issue_description|
      puts "#{issue_key} => #{issue_description}"
    end
  end
end