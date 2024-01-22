# Case-Study-Cyclistic-Bike-Share
How Does a Bike-Share Navigate Speedy Success?

By Hai Nguyen 

# Background
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.
In this case study for the Google Data Analytic Program, I will be playing as a Junior Data Analyst working in the Marketing Analyst Team at Cyclistic. Cyclistic is a bike-sharing company in Chicago. The director of marketing believes that the company's future depends on maximizing the number of annual memberships. Our team wants to understand differences between how casual and annual members use Cyclistic bikes differently. These insights will be used to design a marketing strategy to convert casual members to annual members.

# Key Stakeholders
•	Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns
and initiatives to promote the bike-share program. These may include email, social media, and other channels.

•	Cyclistic marketing analytics team: A team of data analysts who are responsible for collecting, analyzing, and
reporting data that helps guide Cyclistic marketing strategy.

•	Cyclistic executive team: The notoriously detail-oriented executive team will decide whether to approve the
recommended marketing program.

# Ask
Business task: Design marketing strategies aimed at converting casual riders into annual members.

Analysis question: The three question below will guide the future marketing program.

1.	How do annual members and casual riders use Cyclistic bikes differently?
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?

# Preparation

### Data Sources 

Data being used are from the year of 2023 [(Jan 2023 – Dec 2023)](https://divvy-tripdata.s3.amazonaws.com/index.html)

Note: Datasets have a different name because Cyclistic is a fictional company.

There are 12 different CSV, and each CSV represents a month in the year of 2023.

For this case study, the datasets are appropriate and can be used to answer business questions. The data has been made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement). This datasets are public data that can be used to explore how different customer types are using Cyclistic bikes. Data-privacy issues prohibit you from using riders’ personally identifiable information. This means that you won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### Data Organization

There are 12 CSV files with naming conventions of YYYYMM-divvy-tripdata and each file includes one month. Each file has information about each bike trip in their corresponding columns named ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng and member_casual.

# Process

SSMS is being used to clean and combine all the datasets into one dataset since a worksheet programs like Microsoft Excel aren't able to manage the large amount of datas we have . Tableau will be used for visualization.

### Exploring/Combining Datasets/Data Cleaning

After exploring our datasets, datasets are combined with only columns that has information needed for our analysis, as well as adding a column for ride length durations.
[(Query here)](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/edit/main/Combining%20Data.sql)

Null or duplicates values identied and removed if neccasary. [(Query here)](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/blob/main/Cleaning%20Data.sql)

# Analyze

Data has now been stored appropriately and is now ready for analysis. Multiple tables were queried for our analysis, and Tableau is used to visualize them. [(Query here)](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/blob/main/Analyze%20Data.sql)










