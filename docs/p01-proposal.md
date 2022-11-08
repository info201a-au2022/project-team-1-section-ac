# Title of your Project: Project Proposal

**TODO**: Edit this file. Your project proposal goes here.

For what to do, see the [`../instructions/`](../instructions/) directory, specifically:

* [Design Brief](Documents/info201/Siyuanji-s/instructions/project-design-brief.pdf)
* [Project Proposal for AC group 1](Documents/info201/Siyuanji-s/instructions/p01-proposal-requirements.md)

# Instructions for P01: Project Proposal

* **Where is the project brief?**  [`../instructions/project-design-brief.pdf`](../instructions/project-design-brief.pdf).
* **Making Progress**: We understand this project might be difficult. Also, we understand that your project ideas might not be completely worked out. So, we ask that you do the best you can. You will receive specific guidance from your TA and constructive feedback. We are confident that you will succeed!
* **What should be included in the proposal?** Every proposal will be different. It depends on your particular project.  That said, in the table below you will find the **required** report elements.  It is important that you engage with and respond to the the Design Brief.
* **How should the proposal be formatted?** You should format your proposal using Markdown. You should aim for a professional presentation - clear, concise, inclusive, interesting, and free of spelling and grammatical errors.
* **What headings should we use?** As needed, the suggested headings below can be revised and new headings and sub-headings can be added. Please use headings, bullet lists, tables, figures, and other markdown code effectively - seek a professional presentation.
* **Questions?** If you have questions, please ask your TA or post on Teams.

#### |Element | Brief Description|
|---------------| --------------
##### |Code name | Give your project a _code name_, a short, evocative name for efficiently referring to your project. Your code name does not change! Examples: _Jazz-4_, _Rocking Fish_, etc. |
* _**mass_shooting-1**_

##### |Project title| Give your project a concise, interesting title that summarizes the entirety of your project. (Your title can change on subsequent deliverables.) |
* **Mass shooting data**

##### |Authors| Names of your team members and contact information (UW email addresses). |
* **Siyuan Ji**: siyuanji@uw.edu
* **Sean Park**：seanp25@uw.edu
* **Junhan Jiao**: junhaj@uw.edu

##### |Affiliation |  INFO-201: Technical Foundations of Informatics - The Information School - University of Washington ||Date | Autumn 2022|
* _INFO-201: Technical Foundations of Informatics - The Information School - University of Washington, 10/29/2022, Autumn 2022_

##### |Abstract | Write a short abstract of three sentences. Your abstract should summarize your entire project, but only the very most important aspects. Here are two examples of how you might structure your abstract: **(1)** "Our main question is .... This question is important because .... To address the question, we will ...." and **(2)** "We are concerned with ..., because .... To address this concern, we plan to ...." |
* Our main question is about knowing which states are high crime areas. Moreover, we want to see the crime rate for each gender, race, and age. This question is crucial because it helps us know which area and what kind of people had more targets to get hurt and whether the government could improve this situation and reduce the crime rate.

##### |Keywords | 3-5 keywords that summarize your project.  (e.g., "Keywords: human physiology; bicycle exercise; elderly; power and heart rate times-series data") |
* **Keywords:**
 * Race
 * Gender
 * Year
 * Weapon
 * Targets


##### |Introduction | Briefly introduce your project. (About 150 words.) |
* Our research is centralized on mass gun shootings related to gender, race, age, and location and how those components have been impacted throughout the years. By analyzing the data sets, we think we can come up with a general understanding of crime or gun-shooting rates across different places in the country. By looking through the component of why, how, and when these things happened, we can further understand the reasons behind this matter and how this happened. Overall, we hope this project could help the local people stay safe and help the U.S. government to enforce the police forces better.


##### |Problem Domain | Use short sub-sections to describe your topic and the setting (that is, the sociotechnical situation), including project framing, human values, direct and indirect stakeholders, possible harms and benefits. See the Design Brief, section B.3. **Note**: You *must* include three citations to related work (URLs to similar work, high quality articles from the popular press, reseach papers, etc. ). You may find it helpful to include a figure.  (About 400 words.) |
* In the post-pandemic background, the crime rate in the U.S. is generally increasing. It becomes increasingly important to analyze the crime rate across the country. Therefore, we decided to look through the mass shooting data of the U.S. and try to analyze the crime rate of different states, when and where those shootings often happened, the reason, and the target of the shooting. Moreover, by analyzing those data sets, we can help the direct stakeholders, the residents, to stay away from dangerous areas and help the government emphasize where they should enhance the police force. As Mr. Biden told the Survivors of gun violence, "It is proof that, despite the naysayers, we can make meaningful progress on gun violence." (Newyorktimes July 11, 2022)
 Although one of the top law enforcement officials said, "By all means, at this point, this appears to be completely random" (Newyorktimes July 4, 2022) But we think our project can make progress and prediction about the safety of the local areas through calculations about the several models. Because "shootings have become so common in America, almost all people carry around that fear, even if their own life hasn't (yet) been touched by gun violence" (Patti Davis, July 5, 2022).

https://www.nytimes.com/2022/07/11/us/politics/biden-gun-laws.html?searchResultPosition=10

https://www.nytimes.com/2022/07/04/briefing/chicago-mass-shooting-independence-day-asia.html?searchResultPosition=12
https://www.nytimes.com/2022/07/05/opinion/guns-highland-park-ronald-reagan.html?searchResultPosition=13

##### |Research Questions | Present your 3-5 research questions.  You should present each research question.  For each research question, you should discuss why it is important and what motivates the question. (About 50 words for each question, so for four questions you would write about 200 words or more if needed.) |
* Why is race discrimination in the same category to mass shootings? Is it because of unfair treatment with government officials? Why are mass shootings increasing over the years? I want to know these reasons.
* We want to know the crime rate for each gender, race, and age in each state. This question is crucial because it helps us know which area and what kind of people had more targets to get hurt and whether the government could improve this situation and reduce the crime rate.
* How do the different locations relate to the gun shooting? In the post-pandemic years, gun crime rates are increased. People sometimes don't feel safe walking around the neighborhood. We think they need to know where is safe and where is dangerous, and police departments also need to know these to further their job.

##### |The Dataset |
* **(1)** Describe how your dataset is related to your problem domain and, specifically, to your research qeustions. That is, how will your dataset enable you to answer your research questions?

 * These datasets show the components of gender, race, and age. With the first dataset we look into the areas, cause, targets. The second dataset is looking into the gender, race, and age of mass shootings all around the world. The last one is about year and how it mass shooting has either went up or down in number of victims.  

* **(2)** Include a table that presents the name of each data file, the number of observations (rows), and the number of variables (columns).

|US gun shootings| 322 rows, 21 columns|
|police killings US| 2822 rows, 14 columns|
|mass shootings dataset ver2| 320 rows, 13 columns|

* **(3)** Include a full citation to each data file, including URL.

[Mass shooting version 2](https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+2.csv)

[US Mass shootings](https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+5.csv)

[Police Killings US](https://www.kaggle.com/datasets/azizozmen/police-killings-us)
* **(4)** Finally, describe the provenance of your dataset, addressing such key questions as: (a) Who collected the data? When? For what purpose? (b) How was the data collection effort funded? Who is likely to benefit from the data or make money? (c) How was the data validated and held secure?  Is it credible and trustworthy? (d) How did you obtain the data? Do you credit the source of the data? (About 400 words.) |
 * [Mass shooting version 2] (https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+2.csv) 
In July 2012, Mother Jones collected data. The data was used to create a timeline showing how often mass shootings occurred in the US between 1982 and 2012. The material was gathered at the expense of Mother Jones, who funded the investigation. The people who stand to benefit from this information are likely to have a vested interest in cases of mass shootings that have occurred in the United States. Mother Jones validated the facts. One can confidently rely on such figures. Our information comes from Mother Jones. Whenever possible, we will link back to the source of the data.
 * [US Mass shootings] (https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+5.csv) 
Specifically, Mother Jones News Service gathered the information in this instance. The data was collected over many years, starting in 2012. This information was collected to understand better the frequency of mass shootings in the United States. One possibility is that Mother Jones News Organization provided financial support for the research. Reporting group Mother Jones, which focuses on gun violence in the United States, will find the statistics very useful. Mother Jones, a liberal publication, has verified it. Data about mass shootings in the United States may be presumed to be accurate and reliable, given its source. The writings in Mother Jones have been invaluable to our study. The information was obtained by Mother Jones, a newsgroup.
 * [Police Killings US] (https://www.kaggle.com/datasets/azizozmen/police-killings-us) 
Aziz Ozen gathered the information for the study. Unfortunately, the data collection date needs to be provided. The information may have become outdated. The statistics are meant to demonstrate the extent to which police have been responsible for fatalities in the United States. Aziz Ozen provided the financial backing for the research project. Who exactly would gain from this information is still being determined. However, the data still needs to be checked for accuracy. As of now, it is still being determined what kind of security measures were taken to ensure the confidentiality of the information. Kaggle provided us with the data we needed. Lack of attribution of the data source.


##### |Expected Implications | Proposal only. Assuming you answer your research questions, briefly describe the expected or possible implications for technologists, designers, and policymakers. (About 150 words.) |
The accuracy of the database can be used for educational purposes to help people understand the problem around the world. These databases can also be seen as needed awareness for people who aren’t educated about the gun violence caused in the USA alone. Using data sets such as ours can be shown to improve our economy and learn how gun control can be used to save millions of lives worldwide, starting in America. With needed awareness, people will understand why gun laws are so important in changing the momentum for future directions in the world.


##### |Limitations | Proposal only. What limitations might you need to address? Briefly discuss. (About 150 words.) |
Some limitation is needing to understand what is correct to go over compared to the false datasets that are spreading misinformation. With this kind of limitation, we can find ourselves struggling to understand why some datasets have different observations. Also, to add on, we can see how some sites might have no visualization or citations for proof of work. With all these barriers, we need to carefully understand the harm of misinformation about gun violence.


##### |_Findings_ | _Not for the project proposal; for final report only. Give answers to each of your research questions. (About 400 words.)_ |

##### |_Discussion_ | _Not for the project proposal; for final report only. Discuss importance and/or implications of your findings  (About 400 words.)_ |

##### |_Conclusion_ | _Not for the project proposal; for final report only. Give the reader a summary point, the key point that you will like your audience to leave with. (About 400 words.)_ |

##### |Acknowledgements | Is there anyone you would like to thank? A librarian who helped you with your research? A Teaching Assistant? A friend who helped you find your data? Say thank you in this section.|

##### |References | Include your three or more research citations here. Also, include citations to your data files. Please use a standard citation style of your choice.  See [Citing Sources](https://guides.lib.uw.edu/research/citations) at the UW Library. |

[Mass shooting version 2](https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+2.csv)

[US Mass shootings](https://www.kaggle.com/datasets/zusmani/us-mass-shootings-last-50-years?select=Mass+Shootings+Dataset+Ver+5.csv)

[Police Killings US](https://www.kaggle.com/datasets/azizozmen/police-killings-us)

##### |Appendix A: Questions| Do you have questions for your TA or instructor?  Include them here.|
