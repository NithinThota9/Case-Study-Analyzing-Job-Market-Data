CREATE VIEW vw_job_market_analytics AS
SELECT 
    f.job_posting_id,
    d.job_title,
    d.job_position_level,
    d.job_position_type,
    c.company_name,
    c.company_industry,
    c.company_size,
    l.job_location,
    f.job_year,
    f.minimum_pay,
    f.maximum_pay,
    f.years_of_experience,
    f.number_of_applicants
FROM fact_job_postings f
JOIN dim_job d ON f.job_id = d.job_id
JOIN dim_company c ON f.company_id = c.company_id
JOIN dim_location l ON f.location_id = l.location_id;
