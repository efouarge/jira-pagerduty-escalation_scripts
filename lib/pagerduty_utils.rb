class PagerdutyUtils
  def initialize(service_key, issues)
    @service_key = service_key
    @issues = issues
    @details = Hash.new
  end
  def send_incidents
    @issues.each do |issue_key, issue_description|
      pd = PagerdutyIncident.new(@service_key, issue_key)
      @details = {
          'JIRA Issue Link' => "#{JiraInfo::JIRA_URL}/browse/#{issue_key}",
          'Last Triggered At' => "#{Time.now}"
      }
      pd.trigger(issue_description, @details)
      puts "#{Time.now} #{issue_key} sent to Pagerduty as an incident."
    end
  end
end

