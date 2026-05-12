# Employee Attrition & Retention Analytics Dashboard

## 📑 Table of Contents
- [Project Overview](#-project-overview)
- [Dataset Overview](#-dataset-overview)
- [Business Problem](#-business-problem)
- [Tools & Technologies Used](#-tools--technologies-used)
- [Project Workflow Across Tools](#-project-workflow-across-tools)
- [Key Insights](#-key-insights)
- [Recommendations](#-recommendations)
- [Conclusion](#-conclusion)
- [Author & Contact](#-author--contact)

---

# 📌 Project Overview

The HR Attrition Analysis project uses HR analytics techniques and interactive dashboards to examine employee turnover patterns across departments, salary groups, job roles, promotions, working experience, and work-life balance factors.

The project was developed using **Excel, MySQL, Power BI, and Tableau**, where the same HR business problem was analyzed across different analytics platforms for KPI reporting, SQL analysis, dashboard development, and workforce visualization.

The analysis focuses on key HR KPIs such as attrition rate, retention rate, employee income, promotion history, job satisfaction, and average working years to identify workforce trends and high-risk employee groups.

Using dashboard reporting and visualization techniques, the project helps management monitor employee behavior, evaluate retention challenges, and support data-driven HR decision-making to improve employee engagement, retention strategies, and long-term workforce stability.

---

# 🗂 Dataset Overview

The **IBM HR Analytics Employee Attrition & Performance** dataset contains employee-related information such as:

- Age
- Department
- Education
- Job Role
- Salary
- Work Experience
- Job Satisfaction
- Work-Life Balance
- Promotion History
- Performance Rating

The dataset was created by combining two separate tables, **HR1** and **HR2**, using an INNER JOIN based on employee identifiers:

- `EmployeeNumber` from HR1
- `Employee_ID` from HR2

Additional derived columns were created for advanced analysis:

- Attrition Flag
- Monthly Income Band
- Years Since Last Promotion Band
- Job Satisfaction Level

The dataset also includes important HR factors like overtime status, years at company, relationship satisfaction, and promotion records to support deeper HR analytics and reporting.

---

# 🎯 Business Problem

Employee attrition is one of the major challenges faced by organizations because it directly impacts productivity, recruitment costs, employee morale, and overall business performance.

The objective of this analysis is to identify the key reasons behind employee attrition and uncover trends that can help management improve employee retention strategies through data-driven HR analytics dashboards and visual reports.

This report focuses on:

- Average attrition rate across all departments
- Average hourly rate of male research scientists
- Relationship between attrition rate and monthly income stats
- Average working years for each department
- Job role versus work-life balance analysis
- Relationship between attrition rate and years since last promotion

The analysis helps HR teams identify high-risk employee groups, understand compensation-related concerns, and evaluate whether career growth opportunities and work-life balance influence employee attrition.

---

# 🛠 Tools & Technologies Used

- Microsoft Excel
- MySQL
- Power BI
- Tableau

---

# 🚀 Project Workflow Across Tools

## 🟢 Microsoft Excel | HR Analytics & Attrition Insights Dashboard

### Purpose
Initial exploratory analysis, KPI benchmarking, and rapid prototyping.

### Workflow
- Established the core KPI benchmarks, including:
  - Average Monthly Income: **26,016**
  - Work-Life Balance Score: **2.50**
- Built the HR Analytics & Attrition Insights Dashboard using Pivot Tables, Pivot Charts, and Slicers.
- Identified the “Salary Paradox,” where employees in the Very High-Income category still showed the highest attrition levels.

---

## 🔵 MySQL | MySQL Scripts

### Purpose
Relational data engineering, table merging, and business logic implementation.

### Workflow
- Performed an `INNER JOIN` between HR1 and HR2 tables to create a unified analytical dataset.
- Wrote SQL queries for:
  - Attrition analysis
  - Department-level KPIs
  - Promotion analysis
  - Salary-based insights
- Used `CASE` statements to create business-driven categories such as:
  - Monthly Income Bands
  - Promotion Waiting Intervals

---

## 🟠 Tableau | Employee Attrition Analysis & Employee Retention Dashboard

### Purpose
Advanced dashboard visualization and interactive storytelling.

### Workflow
- Created the Employee Attrition Analysis Dashboard using an interactive dark-theme design to identify high-risk departments.
- Identified Research & Development as the department with the highest attrition rate at **51.21%**.
- Designed the Employee Retention Dashboard with a professional side navigation layout focused on retention trends and employee stability.
- Tracked the overall employee retention rate at **50.21%**.

---

## 🟡 Power BI | Employee Attrition Analysis Dashboard & Employee Retention Dashboard

### Purpose
Business Intelligence reporting and KPI-driven analytics.

### Workflow
- Designed a modern dashboard layout with interactive filters and KPI cards.
- Visualized:
  - Job Satisfaction Trends
  - Promotion Analysis
  - Work-Life Balance Metrics
  - Employee Tenure Patterns
- Created DAX measures to calculate advanced HR KPIs.
- Calculated the employee promotion rate (≤ 1 year) at **24.85%**, highlighting improvement opportunities in career progression strategies.

---

# 📈 Key Insights

- The Average Monthly Income is **26.02K**, yet employees in the Very High-Income group still show the highest attrition at **50.88%**, proving compensation alone is not sufficient to improve employee retention.

- Research & Development records the highest attrition rate at **51.21%**, followed by Software at **50.54%**, while Hardware records the lowest attrition at **49.44%**.

- Employees waiting **21–30 years for promotion** experience the highest attrition at **50.96%**, while employees promoted within **11–15 years** show comparatively lower attrition at **49.66%**.

- The average Work-Life Balance KPI remains moderate at **2.50**, indicating workload pressure and stress-related workforce challenges.

- Software employees show the highest average working years at **20.65 years**, while Research & Development records the lowest at **20.30 years**.

- Attrition remains almost equally distributed across all job satisfaction levels, indicating satisfaction alone does not significantly reduce attrition.

- Hardware records the highest retention at **50.56%**, while Research & Development shows the lowest retention at **48.79%**.

---

# 💡 Recommendations

- Increase promotion opportunities for employees in the **21–30 years promotion waiting group**, where attrition reaches **50.96%**, by implementing faster internal career progression programs.

- Focus retention strategies on the Research & Development department, which records the highest attrition rate of **51.21%**.

- Improve work-life balance initiatives since the average Work-Life Balance score remains only **2.50**, indicating moderate employee satisfaction and workload stress.

- Review retention policies for Very High-Income employees because this group still experiences the highest attrition rate at **50.88%**, proving salary alone is not sufficient for retention.

- Strengthen employee engagement within Software and technical departments where average employee experience exceeds **20.60 years**, yet attrition remains above **50%**.

- Increase recent promotion rates beyond the current **24.85%**, as employees receiving timely promotions demonstrate stronger retention and lower attrition.

- Implement department-specific workload management programs, especially for Research & Development and Software teams, where workforce instability is highest.

- Continuously monitor HR KPIs such as attrition rate, retention rate, promotion trends, and work-life balance through HR analytics dashboards.
  
---

# 🏁 Conclusion

The HR Attrition Analysis reveals that employee turnover remains a major organizational challenge, particularly within Research & Development and technical departments where attrition levels are the highest.

The analysis confirms that salary alone is not the primary factor influencing employee exits, as even employees in higher income groups continue showing high attrition levels.

Delayed promotions, limited career growth opportunities, moderate work-life balance, and workload pressure are identified as the major contributors to workforce instability and reduced employee retention.

Overall, the dashboard successfully helps identify high-risk employee groups and provides data-driven insights that support HR teams in improving employee engagement, strengthening retention strategies, and enhancing long-term organizational performance.

---

## 👤 Author & Contact

**Praveen S**                                                                                                                                                                                                                                              
Aspiring Data Analyst

📧 Email: praveenmono145@gmail.com  
🔗 LinkedIn: https://www.linkedin.com/in/praveenmono26/
