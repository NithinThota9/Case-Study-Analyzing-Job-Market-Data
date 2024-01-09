# Case Study: Job Market Analytics (SQL + Power BI)

Project Overview

This project analyzes job market trends using a structured Business Intelligence workflow. The objective was to transform raw job posting data into meaningful workforce insights related to hiring demand, required skills, salary trends, and industry distribution.

The dataset contains 25,114 job postings with 17 attributes including job title, posting date, industry, required skills, salary ranges, experience level, company information, and number of applicants.

The analysis was conducted using:

    ->SQL Server for data transformation and modeling

    ->Power BI for reporting and visualization

Business Objective

A fictional recruitment firm, DataSearch, wants to understand:

    ->Which data-related roles are most in demand

    ->How required experience levels vary by position

    ->Which industries are hiring most actively

    ->How skill demand evolves over time

    ->How experience influences salary

The final deliverable is an interactive Power BI dashboard that enables business users to explore these insights dynamically.

Data Preparation & Modeling

Data Cleaning and Exploration

The dataset was imported into Power BI and initially explored using Power Query.

During exploration, it was identified that:

   ->Over 93% of salary fields (Minimum Pay and Maximum Pay) were null.

   ->Salary insights must therefore be interpreted carefully.

   ->Several text columns required cleaning and normalization.

Initial exploratory analysis focused on:

   ->Experience level distribution

   ->Industry hiring patterns

   ->Posting volume trends over time



   Experience vs Job Level Analysis

To understand how experience requirements differ by role, the average years of experience were analyzed across job position levels.

![image](https://user-images.githubusercontent.com/113103161/206879491-99428656-0975-446a-ae6a-c0e13c05c677.png)

![image](https://user-images.githubusercontent.com/113103161/206880289-148148c7-bd3f-4c28-a751-5aecde2e6a21.png)

Findings:

   ->Executive roles require the highest average experience (~15 years).

   ->Internship roles require less than 1 year on average.

   ->Experience requirements scale consistently with job seniority.

Job Posting Trend Analysis

To evaluate hiring trends over time, job posting counts were analyzed using posting date as a time axis.

![image](https://user-images.githubusercontent.com/113103161/206880032-a93f49dd-92a1-4b6a-8eab-fb8257cf6d44.png)

Observations:

   ->Hiring demand declined in early 2020, aligning with COVID-19 disruptions.

   ->Mid-Senior level roles experienced the highest growth from 2017 to 2021.

   ->Internship postings showed temporary decline but later recovery.

This confirms steady long-term demand growth for data-related roles.


Focus on Data-Related Roles

The analysis was narrowed to the following job titles:

  ->Data Engineer

  ->Data Scientist

  ->Data Analyst

  ->Machine Learning Engineer

  ->Data Science Manager 

![image](https://user-images.githubusercontent.com/113103161/206880551-48fd4ce7-b15e-4746-a93a-ffbd5cf3be5d.png)

Key insight:

   ->Data Engineer roles represent the largest share of postings.

   ->Data Engineer accounts for nearly half of all analyzed data-related postings.

   ->Data Science Manager roles are comparatively limited.


Experience Impact on Salary

The relationship between experience and salary was analyzed.

![image](https://user-images.githubusercontent.com/113103161/206910657-8bdc8967-492d-4d17-b95f-47d110267d7d.png)

Findings:

   ->Salary ranges increase with years of experience.

   ->Data Analysts typically show lower salary bands compared to Engineers and Scientists.

   ->Salary conclusions are directional due to high null rates in salary columns.

Market & Skill Analysis

Skill Extraction and Transformation

The Job Skills column contained lists of skills stored as text arrays.
To analyze this properly:

   ->Brackets and special characters were removed.

   ->Text was cleaned using Trim and Clean transformations.

   ->Skills were split into individual rows.

   ->A separate skill table was created for accurate aggregation.


Most In-Demand Skills:
![image](https://user-images.githubusercontent.com/113103161/206914484-eebba5da-0fd9-466b-92ad-0109a156168f.png)

We observe that the count of Job Skills was highest for python at 3,931, followed by sql and cloud. Python accounted for 7.44% of Count of Job Skills. Across all 165 Job Skills, Count of Job Skills ranged from 1 to 3,931.

Skill Probability Analysis

Using DAX, probability metrics were created:

   ->Skill Count

   ->Posting Count

   ->% of Skill in Posting

This allowed measurement of how likely a skill appears in a job posting

![image](https://user-images.githubusercontent.com/113103161/206923866-5e51ade3-afa3-4ad6-9fe5-6d27b6c0d723.png)


### Trends in skills over time
Next, let's analyse the trend of skills in job postings over time. This can give us a good idea of what skills are more in demand in certion time periods. We want a a time-series graph, so we use a Line Chart to visualise the ```% Skill in Postin``` over time by using ```Posting Date``` and use ```Job Titles``` from our ```Job Skills``` table as a legend. The result is the following graph:

![image](https://user-images.githubusercontent.com/113103161/206929608-faa75cd5-996b-4d7c-ab00-93e062a196fe.png)

We can observe that although the metrics have fluctuations on a short-term basis, the top 10 skills maintain at consisted deman over the past few years. Moreover, across Job Skills, spark had the most interesting recent trend and started trending down on 2017, falling by 6.61% (1.29%) in 4 years.

### Industry & Company Insights

A deeper analysis examined:

   ->Experience level by industry

   ->Posting volume by industry

   ->Company-level hiring patterns

![image](https://user-images.githubusercontent.com/113103161/208241963-80cf74e8-e0bc-48f4-aaae-e4dc00c386a4.png)

Findings:

   ->Internet and technology industries show the highest hiring concentration.

   ->Mid-Senior level roles dominate hiring demand.

   ->Average experience requirements vary by industry.

![image](https://user-images.githubusercontent.com/113103161/208242227-552452a4-2289-4ec0-91c6-c0ec820c1574.png)

Example:

   ->Toptal shows significant hiring volume for Data Engineers and Data Scientists.

   ->Internet industry records the highest total posting count.

## Building Dashboard

Now it’s time to hand over the final deliverable. We’ll combine all of the job listing insights we’ve discovered into an interactive Power BI dashboard for the DataSearch team.

### Begin dashboard templates
We decide to summerise our findings in three pages Jobs, Skills, Company, introduced in the Home page. We used template pictures for the background to make our final dashboard more organised.

### Designing a dashboard layout

![image](https://user-images.githubusercontent.com/113103161/208248501-967ac9a6-3c32-4360-91a7-2be5c6621cfa.png)

### Exploring top skills for jobs
![image](https://user-images.githubusercontent.com/113103161/208248548-7129d6c4-5675-4016-bc26-71a25f094ac8.png)

### Salary gauge for companies
![image](https://user-images.githubusercontent.com/113103161/208248566-b31530ec-c010-402d-bf81-398b4bd1d638.png)

## Adding interactivity with bookmarks

With the help of icons and bookmarking them, I was able to make my dashboard even more interactive. This id the final results where the icons are clickable and make working with the dashboard a lot easier for the end-user. This is the final result:


- Home Page:
![image](https://user-images.githubusercontent.com/113103161/208249231-c3bd58cb-5bd2-4d85-8266-9e3c187756ef.png)

- Jobs Page:
![image](https://user-images.githubusercontent.com/113103161/208249245-e5325079-fe6d-46d7-8920-5782e6ec4fcc.png)

- Skills Page:
![image](https://user-images.githubusercontent.com/113103161/208249267-de393e15-bbe3-4c94-8de1-a08a83c00cbb.png)

- Company Page:
![image](https://user-images.githubusercontent.com/113103161/208249285-e2a3aacd-28a5-4228-a4b2-a692330349c6.png)


###Conclusion

This project demonstrates:

   ->Structured data preparation

   ->Skill extraction and normalization

   ->Analytical modeling using DAX

   ->Time-series trend analysis

   ->Industry and geographic demand insights

   ->Interactive dashboard development

The solution provides business users with a comprehensive view of job market dynamics and supports data-driven workforce strategy decisions.




