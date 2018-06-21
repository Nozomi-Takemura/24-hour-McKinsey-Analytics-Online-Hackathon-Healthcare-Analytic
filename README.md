# Project Title

McKinsey Analytics Online Hackathon - Healthcare Analytics: https://datahack.analyticsvidhya.com/contest/mckinsey-analytics-online-hackathon/ (Apr 14th 2018)

## Getting Started

This repository consists of the set of codes used in the above datathon.

### Problem Statement
Here, the original problem statement is copied from "https://datahack.analyticsvidhya.com/contest/mckinsey-analytics-online-hackathon/":

"In this case, your client wants to have study around one of the critical disease "Stroke". Stroke is a disease that affects the arteries leading to and within the brain. A stroke occurs when a blood vessel that carries oxygen and nutrients to the brain is either blocked by a clot or bursts (or ruptures). When that happens, part of the brain cannot get the blood (and oxygen) it needs, so it and brain cells die.

Over the last few years, the Client has captured several health, demographic and lifestyle details about its patients. This includes details such as age and gender, along with several health parameters (e.g. hypertension, body mass index) and lifestyle related variables (e.g. smoking status, occupation type).

The Client wants you to predict the probability of stroke happening to their patients. This will help doctors take proactive health measures for these patients."

Hence, the goal of this hackathon is to attain a model with a high predictability of stroke for unseen test dataset of patients' information. Note that in this datathon, as a criterion of the evaluation metric for predictability, the organizer specified AUC ROC score (https://www.analyticsvidhya.com/blog/2016/02/7-important-model-evaluation-error-metrics/)

### Data
The variables in the datasets give the following information:


Variables: Definition

id: Patient ID

gender: Gender of Patient

age: Age of Patient

hypertension: 0 - no hypertension, 1 - suffering from hypertension

heart_disease: 0 - no heart disease, 1 - suffering from heart disease

ever_married: Yes/No

work_type: Type of occupation

Residence_type: Area type of residence (Urban/ Rural)

avg_glucose_level: Average Glucose level (measured after meal)

bmi: Body mass index

smoking_status: patient's smoking status

stroke: 0 - no stroke, 1 - suffered stroke


### Prerequisites

I used neural network in matlab to predict AUC and ROC; hence, the "netlab" package needs to be installed, which is available at http://www.aston.ac.uk/eas/research/groups/ncrg/resources/netlab/downloads/

### Main flow

The main flow is the data cleaning and model fit.
Regarding the data cleaning, the missng data are dealt with two ways, complete case analysis and Kth nearest imputation analysis.

After that, a simple logistic regression and newral network are respecitvely fitted.


