# VideoStreaming_QualityStudy

[![Paper](https://img.shields.io/badge/paper-Read%20the%20Paper-orange)](https://www.diva-portal.org/smash/record.jsf?dswid=8322&pid=diva2%3A1246626&c=1&searchType=SIMPLE&language=en&query=sindhu+vasireddy&af=%5B%5D&aq=%5B%5B%5D%5D&aq2=%5B%5B%5D%5D&aqe=%5B%5D&noOfRows=50&sortOrder=author_sort_asc&sortOrder2=title_sort_asc&onlyFullText=false&sf=all)

A repository for the implementation of an experimental study on the [**Impact of Initial Delay and Stallings on the Quality of Experience (QoE) of the User**](https://www.diva-portal.org/smash/record.jsf?dswid=8322&pid=diva2%3A1246626&c=1&searchType=SIMPLE&language=en&query=sindhu+vasireddy&af=%5B%5D&aq=%5B%5B%5D%5D&aq2=%5B%5B%5D%5D&aqe=%5B%5D&noOfRows=50&sortOrder=author_sort_asc&sortOrder2=title_sort_asc&onlyFullText=false&sf=all). This study aims to investigate and validate the relationship between Quality of Service (QoS) parameters and QoE using subjective data.

## Abstract

## Context: 
In telecommunications, it is important for network providers to have a knowledge of generic relationships between multi-dimensional QoE and QoS parameters to be able to provide quality service to the customers, keeping in mind the real-time constraints such as time, money and labor. So far, there have been several research works on formulating a generic quantitative relationship between a single QoE and a single QoS parameter in literature. As per the research conducted, the most common examples of mapping between a QoS parameter and QoE were found to be the exponential model (the IQX hypothesis), the logarithmic model (the WeberFechner law), and the power model. However, it has been less common to study the multi-dimensional relationship between QoE and QoS parameters.

### Objective: 
The purpose of this paper here is to discuss the impact of several QoS parameters on QoE. The proposal put forth by existing literature is that a multiplicative model better explains the impact of QoS parameters on the overall quality as perceived by the user. The proposal was, however, never backed by subjective data.

### Method: 
We have performed several subjective tests in this regard to test our hypothesis. Non-adaptive streaming of videos in a monitored server-client setup was used. In these tests, the objective was to obtain the Mean Opinion Scores(MOS) for varying QoS parameters such as the initial delay and the number of stalls. Network shaping was used for introducing the disturbances in the videos. The experimental setup consisted of a total of 27 experiments per user and each user was handed over a questionnaire. The questionnaire mainly consisted of four questions aimed at gathering feedback from the users regarding the quality of the videos shown to them. Users were asked to mark their MOS on a continuous scale. The videos were subjected to three different values of Initial Delay, Stalls and Resolution, each. The average duration per stalls throughout the experiments was maintained at 2 seconds.

### Results: 
Data was collected from 15 users. Thus, in total 405 MOS values were recorded for 27 combinations of Initial Delay, number of Stalls and Resolution. The impact of initial delay and stalls on the QoE as indicated by the MOS was then categorized and studied for each Resolution. With the help of regression tools in MATLAB and Solver in Excel, possible models that explain the multi-dimensional QoS-QoE relationship were studied.

### Conclusion: 
The results mostly indicated towards the multiplicative model just as proposed by the existing literature. Also, it was observed that Initial Delay alone has not much impact on the overall QoE. So, the impact of Initial Delay could be described either by an additive or a multiplicative model. However, the impact of Stalls on QoE was found to be multiplicative.

## Thesis Paper

The full research paper can be accessed [here](https://www.diva-portal.org/smash/record.jsf?dswid=8322&pid=diva2%3A1246626&c=1&searchType=SIMPLE&language=en&query=sindhu+vasireddy&af=%5B%5D&aq=%5B%5B%5D%5D&aq2=%5B%5B%5D%5D&aqe=%5B%5D&noOfRows=50&sortOrder=author_sort_asc&sortOrder2=title_sort_asc&onlyFullText=false&sf=all).

## Usage

To replicate the experiments conducted in the study, follow the steps below:

1. Clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/VideoStreaming_QualityStudy.git
cd VideoStreaming_QualityStudy
```

2. Execute the Bash script to perform the video streaming experimentation:
```bash
bash video_streaming_experiment.sh
```

## Contact
The research and study conducted by Sindhu Vasireddy form the basis of this implementation. Special thanks to Blekinge Institute of Technology for providing the opportunity to explore this topic and its implications on user experience in video streaming.

Please feel free to contribute to this repository with a PR or contact the author for any questions or inquiries related to the study.