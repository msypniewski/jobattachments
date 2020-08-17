module PagesHelper

  def created_at job
    # job.class
    true ? posted_days_ago(job) : DateTime.parse(job).strftime("%d-%m-%Y")
    # t.strftime "%Y-%m-%d %H:%M:%S UTC"  => "2012-11-10 17:16:12 UTC"

  end

  def job_location job
    if job.company.nil? 
      return "brak"
    else
      job.location['display_name'] || job['location']['display_name'] || job['location']
    end
  end


  def company_name job
    if job.company.nil? 
      return "brak"
    else
      job.company['display_name'] || job['company']['display_name'] || job['company']
    end
  end

  def link_to_details job
    return link_to 'View & apply', job['redirect_url'], class: 'btn btn-primary btn-block' if job['redirect_url']
    return link_to 'View & apply', show_job_path(job['id']), class: 'btn btn-primary btn-block' if job['id']
    
  end
end
# pageview