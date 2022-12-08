library(shiny)
library(plotly)

map_sidebar_content <- sidebarPanel(
  selectInput("mapvar",
              label = "Variable to Map",
              choices = list(
                "Injured" = "Injured",
                "Fatalities" = "Fatalities")
  )
)
map_main_content <- mainPanel(
  plotlyOutput("map")
)
map_panel <- tabPanel(
  "Map",
  titlePanel("US Mass Shooting"),
  p("• The first interactive graph we got is the number of injured/fatalities in different state."),
  p("• The darker each state are, the higher fatality/injured number is, so we can see
from the graph California is the Number1. state both in fatality(173) and injury(201)."),
  p("• Texas is the Number2. state in fatality(113) and injury(149), Florida is the 3rd, and so on.
We can also see that, the mid-west of the U.S. has the lowest possible fatality and injury.
Therefore the mid-west are rather safe across the country."),
  sidebarLayout(
    map_sidebar_content,
    map_main_content, 
    position = c("left", "right"),
    fluid = TRUE
  )
)

chart_main_content <- mainPanel(
  plotlyOutput("fatalPlot")
)

chart_sidebar_content <- sliderInput(inputId="yrVar", label="Year Slider", min=1966,max=2016,value=2000)
chart_panel <- tabPanel("Year Graph", titlePanel("Year Mass Shooting Graph"),
                        p("• The second interactive chart is the number of fatalities in different years.
We selected the data from 1966 to 2017, and the corresponding number of fatality.
We can see the trend that the fatality are increasing throughout the year.
Especially in 2015, it reached a peak number of 226 people."),
                        p(" • So as times moving, we are getting unsafe, the possibility of mass_shooting increase."),
                          sidebarLayout(chart_main_content,chart_sidebar_content))

target_main_content <- mainPanel(
  plotOutput("scatter")
)
target_sidebar_content <- sliderInput("size", label = "Size of point", min = 1, max = 10, value = 5)

target_panel <- tabPanel("Target", titlePanel("Distribution of Mass shooting Causes"),
                         p("• The third chart we gather the different type/number of causes, to see which is the
major cause of mass-shooting."),
                         p("• We can see from the chart, the top 3 Causes is psycho, terrorism and anger."),
                         sidebarLayout(target_main_content, target_sidebar_content))


intro_panel<- tabPanel("Introduction",
                       h1("US MASS SHOOTING"),
                       h2("Introduction:"),
                  p("• Our research is centralized on mass gun shootings related to gender, race, age,
location and how those components have been impacted throughout the years.
By analyzing the Mass-shooting data sets, we think we can come up with a general
understanding of crime or gun-shooting rates across different places in the country.
By looking through the component of why, how, and when these things happened,
we can further understand the reasons behind this matter and how this happened.
Overall, we hope this project could help the local people stay safe and help the
U.S. government to enforce the police forces better."),
                  img("", src = "Distrubution_map.png", height = 400, width = 600),
                  h2("Questions:"),
                  p(strong("1.Which state has the most Fatality and injury people? Which area of the country
is the most safe zone?")),
                  p(strong("2. Which year has the most fatality, what's the trend of the fatality over time.")),
                  p(strong("3. What is the major cause of this mass-shooting, what can we do to reduce the possibility of mass-shooting.")),
                  h2("Dataset:"),
                  p("• The dataset we use is the Mass_Shootings in the U.S. from 1966 to 2017.
It includes many aspects of the Mass shooting incidents like Cause, Area of shooting,
Mental status and so on. It contains detailed information of 398 mass shootings in the United States 
of America that killed 1996 and injured 2488 people. The dataset contains Serial No, Title, 
Location, Date, Summary, Fatalities, Injured, Total Victims, Mental Health Issue, Race, Gender, 
and Lat-Long information. The author consulted several public datasets and web pages to 
compile this data. Some of the major data sources include Wikipedia, Mother Jones, Stanford, USA Today and other web sources."),
                  h2("Key Facts:"),
                  p("We found that the U.S. has witnessed 398 cases of mass shootings in last 50 years that
resulted in 1996 deaths and 2488 injured. The latest and the worst mass shooting
of October 2, 2017 killed 58 people and 2488 injured.The number of people injured in this attack is
more than the number of people injured in all mass shootings of 2015 and 2016 combined.
The average number of mass shootings per year is 7 for the last 50 years that
would claim 39 lives and 48 injured per year."))

summary_panel<- tabPanel("Summary Takeaway",
                       h1("Summary Takeaway"),
                       img("", src = "newplot.png"),
                       p("Our first takeaway was about the deaths and injured citizens all 
                       around the United States. After looking into the dataset and finding
                       out the differences between the two subjects we found that injuries were more 
                       consistent than deaths all across the map. The only state with both fatalities 
                       and injuries that had the same shade was California with 201 injuries and 173 deaths, 
                       with other countries having a significant difference in proportion to one other. 
                       Surprisingly our estimations from the start of the project were off by a lot, 
                       assuming that many east coast states would have higher death/injured rates 
                       because of more lenient gun laws. "),
                       img("", src = "newplot (1).png"),
                       p("Our second takeaway from our graphs was the year graph. Starting from 1966 to 2018 we see that some of the beginning 
                       years have a fluctuation of fatalities going up and down making the graph inconsistent. Starting in 2012 we see a huge 
                       spike from the previous year jumping up 70 more cumulative fatalities. Conversely, we see an even bigger spike from 2014-2015 
                       with a 181 jump, adding to the curiosity of why these later years are jumping up in fatalities. 
                       Our data reveal a huge spike in mass shootings all across America all occurring in public areas, showing an upward trend starting in 2012."),
                       img("", src = ""),
                       p("With our final takeaway, we look at the reasons behind why these mass shootings occur. According to the data that we have discovered
                         we can see the top reasons why people commit these crimes are due to anger, mental illness, and terrorism. Our y-axis represents the 
                         number of causes that occurred in the year 2022 and the x-axis represents the type of causes. Starting with a N/A with the highest 
                         amount due to being unresponsive or by taking your own life during the incident. Surprisingly our estimations were incorrect once again,
                         we all thought robbery and religion were going to be the leading causes in our era but were the least amount this year."))

report_panel <- tabPanel("Report page",
                         h1("US Mass shooting"),
                         p(strong("Code Name: mass_shooting-1")),
                         p(strong("Siyuan Ji: (siyuanji@uw.edu), Sean Park：(seanp25@uw.edu), Junhan Jiao: (junhaj@uw.edu)")),
                         p(strong("INFO-201: Technical Foundations of Informatics- The Information School - University of Washington")),
                         p(strong("Autumn 2022")),
                         h2("Abstract"),
                         p("Our main question is about knowing which states are high crime areas. 
                           Moreover, we want to see the distrubtion about crime area for each place's fatalities and injured. 
                           This question is crucial because it helps us know which area and what kind of people had more targets to get hurt and
                           whether the government could improve this situation and reduce the crime rate."),
                         h2("Keywords"),
                         p("Race, Gender, Year, Weapon, Targets"),
                         h2("Introduction"),
                         p("Our research is centralized on mass gun shootings related to gender, race, age, and location and how those components have been 
                           impacted throughout the years. By analyzing the data sets, we think we can come up with a general understanding of crime or 
                           gun-shooting rates across different places in the country. By looking through the component of why, how, and when these things happened, 
                           we can further understand the reasons behind this matter and how this happened. Overall, we hope this project could help the local people 
                           stay safe and help the U.S. government to enforce the police forces better."),
                         h2("Problem Domain"),
                         p("In the post-pandemic background, the crime rate in the U.S. is generally increasing. It becomes increasingly important to analyze the crime
                         rate across the country. Therefore, we decided to look through the mass shooting data of the U.S. and try to analyze the crime rate of different 
                         states, when and where those shootings often happened, the reason, and the target of the shooting. Moreover, by analyzing those data sets, 
                         we can help the direct stakeholders, the residents, to stay away from dangerous areas and help the government emphasize where they should enhance the police force. 
                         As Mr. Biden told the Survivors of gun violence, (It is proof that, despite the naysayers, we can make meaningful progress on gun violence.) 
                         (Newyorktimes July 11, 2022) Although one of the top law enforcement officials said, (By all means, at this point, this appears to be completely random) 
                         (Newyorktimes July 4, 2022) But we think our project can make progress and prediction about the safety of the local areas through calculations about the several models. 
                         Because (shootings have become so common in America, almost all people carry around that fear, even if their own life hasn't (yet) been touched by gun violence) (Patti Davis, July 5, 2022)."),
                         h2("Research Questions"),
                         p(strong("1.Which state has the most Fatality and injury people? Which area of the country is the most safe zone?")),
                         p(strong("2. Which year has the most fatality, what's the trend of the fatality over time.")),
                         p(strong("3. What is the major cause of this mass-shooting, what can we do to reduce the possibility of mass-shooting.")),
                         h2("The Dataset"),
                         p("These datasets show the components of injured, victim, fatalities. With the first dataset we look into the areas, cause, targets.
                           The second dataset is looking into the injured, victim, fatalities of mass shootings all around the world. The last one is about year and
                           how it mass shooting has either went up or down in number of victims."),
                         h2("Findings"),
                         p("Question 1: Which state has the most Fatalities and injuries? 
                         With the dataset and research that my group has done, we can see that California has the highest amount of fatalities and injuries 
                         over any other state in America. California has once been considered one of the safer states in America. Our research points show that
                         California has a higher rate of gun violence than any other state, meaning that they have a higher chance of allowing mass shootings to occur. 
                         With these statistics the higher rates of gun violence cause California to be at the top of all the states to cause these tragic shootings."),
                         p("Question 2:  Which year has the most fatality, what's the trend of fatality over time? Looking at the trend of our dataset we can see fluctuations of 
                         fatalities going up and down making the graph show inconsistent growth through the years 1966 - 2012. Heading into the years after we see insane spikes 
                         that occurred in 2012 - 2015 with a 181 jump. With these upward trends that go on after 2012, we can conclude that gun violence has been a popular topic 
                         all over the news spreading influence to others across America."),
                         p("Question 3: What is the major cause of this mass shooting, what can we do to reduce the possibility of mass-shooting? 
                           According to the data that we have discovered we can see the top reasons why people commit these crimes are due to anger,
                           mental illness, and terrorism. There are many ways to stop this reoccurring tragedy such as sensible gun laws, bringing
                           communities together to spread awareness for public systems, and having dataset visualizations be more published to educate
                           people that are not familiar with these tragedies."),
                         h2("Discussion"),
                         p("Year by year we see too many people losing loved ones over being at the wrong place at the wrong time. Here news of public schools,
                           churches, and concerts is in the conversation. We need to end these tragedies once and for all. Our main goal with our project was to spread the
                           awareness that is much needed to students, staff, and officials that are not as educated as they should be. We wanted to show a detailed visualization
                           for people to understand the details that go on with mass shootings. For example, our year fatalities were to show the growth of fatalities that go on
                           throughout each year, causes were to show reasons behind why these individuals are doing such things, and lastly total fatalities and injuries in each
                           state to represent what states need to be protected and shown more awareness. We hope to inspire others to take action by protesting within the community,
                           helping others that are having troubling times, and take gun laws seriously. Understanding that our country's lack political will to stop these laws is not
                           easy to accomplish, asking ourselves how many more mass shootings there need to be for there to be a new gun law."),
                         h2("Conclusion"),
                         p("In this project, we start by choosing the mass-shooting dataset. Our goal was to
try to analyze the data, and try to find the pattern that might give some instructions or helps to
people in this nation. We try to analyze the time, location, cause, target and so on, to get a trend of U.S. mass_shooting happened.
We get the result of certain state like Nebraska and Wyoming is the generaly has less mass_shooting event than California, Texas
certain social group of people are more fragile and easily to get injured by that hazard event. The causes of all the events could 
divided by disputes like: break up, psycho, drunk, terrorism, revenge, frustration, robbery, failing exams and so on. 
And try to predict the social status, the stability of society by analyzing the trend of years mass-shooting happened.
This project is just the start of raising awareness of people in the U.S. there is still lots to do in the upcoming future.
Since the lossy control of firearms took up a major cause in the insecurity of U.S. society, we need to analyze more on the massive
gun shooting hazard, collaborate with security departments, try to came up a better plan of gun control in the future. 
We hope this could help people who works in the social security administration better protect people's life."),
                         h2("Acknowledgements"),
                         p("We want to thank our professor, Thomas Winegarden, and our teaching assistant, Darren Gunadharma. With your help, we could finish successfully. 
                           We all enjoy taking this class and learning lots about R."),
                         h2("References"),
                         p("https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+2.csv"),
                         )




ui <- navbarPage(
  "US Mass Shooting",
  intro_panel, map_panel, chart_panel, target_panel, summary_panel, report_panel)


