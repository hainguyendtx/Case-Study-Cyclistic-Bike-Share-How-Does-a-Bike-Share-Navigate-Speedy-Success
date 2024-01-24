# Case Study: Cyclistic-Bike-Share
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

SSMS is being used to clean and combine all the datasets into one dataset since a worksheet programs like Microsoft Excel aren't able to manage the large amount of datas we have. Tableau will be used for visualization.

### Exploring/Combining Datasets/Data Cleaning

After exploring our datasets, we combine them, retaining only the columns that contain information needed for our analysis. Additionally, a column for ride length durations is added.
[(Query)](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/edit/main/Combining%20Data.sql)

Null or duplicate values are identified and removed if necessary.[(Query)](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/blob/main/Cleaning%20Data.sql)

# Analyze

Data has now been stored appropriately and is now ready for analysis. Multiple tables were queried for our analysis, and Tableau is used to visualize them. 
[(Query)](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/blob/main/Analyze%20Data.sql)

The total percentage of members and casual riders is analyzed and visualized to provide a broad understanding of the differences between the two groups. Additionally, the total percentage of casual and member riders using each specific bike type is examined

![image](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/assets/157367308/2c11b53e-dace-41ef-af5c-4e46db2fcb63)

- Members account for 64% of our rides, while casual riders make up the remaining 36%. This information is valuable as it allows us to later assess the effectiveness of our marketing strategy in increasing the percentage of member rides. Among member riders, the utilization of classic bikes and electric bikes is nearly identical. In contrast, casual riders exhibit a similar pattern to members, with electric bike utilization approximately 10% higher than classic bikes. Additionally, casual riders have a small percentage of rides involving docked bikes.

The number of trips is examined with consideration given to multiple time factors, providing a more in-depth analysis of specific usage patterns between members and casual riders.

![image](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/assets/157367308/466f6a5c-f3f5-412d-a8a7-be01f7295b9e)
- Casuals and members' total number of rides exhibit comparable behavior in terms of seasonality, peaking during warmer months. Regarding day and hour frequencies, casuals experience an increase during weekends and a lower steady rate during weekdays. The number of rides for casuals consistently increases through each hour of the day until it peaks during the 16:00-18:00 hours, after which it decreases. On the other hand, members show the opposite pattern with a higher steady rate during weekdays and a decrease during weekends. Members' rides peak during the 7:00-9:00 hours and 16:00-18:00 hours.

Average ride duration are compared to find differences in behaviors between members and casuals riders

![image](https://github.com/hainguyendtx/Case-Study-Cyclistic-Bike-Share-How-Does-a-Bike-Share-Navigate-Speedy-Success/assets/157367308/8ea3d4fe-ca9d-43fc-9c75-bd9816efb2f4)
- Casual riders, on average, tend to have longer rides compared to members. Members' average ride duration remains consistent across seasons, weekdays, and hours, with minimal differences. However, for casual riders, the average duration is higher during warmer months, weekends, and specific hours (0:00-4:00, 10:00-15:00), particularly peaking at 3:00-4:00.

### Key Findings
- In general, casual riders have longer ride durations than members, especially during warmer months, weekends, and non-standard commuting hours. This suggests that casual riders are more likely to use these bikes for leisure activities.
- In contrast to casual riders, members are more likely to use these bikes for commuting purposes. This is evident as their ride durations are shorter, but the frequency of use is higher.

# Act

### Recommendation
- Given that casual riders are most active during warmer months and weekends, implementing seasonal or weekend-only memberships can be an effective strategy to convert casual riders to members and increase subscription rates.
- There is an obvious uptrend in warmer months and a downtrend in colder months. To address these slower months, I would suggest offering specials or deals.
- Marketing campaigns should be created during warmer months, targeting locations with high tourist and recreational activities. This is where we're likely to see the highest traffic for casual riders.
- Offering a free 1-day pass can also be implemented since it provides potential customers the opportunity to experience our services and explore what Cyclistic has to offer.

### Addtional Things to Consider for Future Exploration
- Collect data of the demographics that use our services which can help pinpoint which market group to target.
- Collect residential information from members to assess whether location plays a role in the decision to become a member.
- Collect data on casual users' single-ride and full-day passes to conduct a detailed analysis on whether pricing differences between the two impact the usage of our services.




