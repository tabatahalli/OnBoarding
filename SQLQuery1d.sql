/*

I think you might need to use JOB table and JobMedia table (use these tables and try to get jobId,
 job description and no. of jobs advertised using COUNT OR you can display IsActive where IsActive=1.

*/
SELECT       COUNT(Job.Id) as JobId, Job.JobDescription
FROM            Job INNER JOIN
                         JobMedia ON Job.Id = JobMedia.JobId
						 group by Job.JobDescription

						