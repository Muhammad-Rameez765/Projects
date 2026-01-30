# 🧠 Employee Sentiment Analysis Project

## 📋 Overview
This project analyzes **employee messages** to assess **sentiment and engagement** using **Natural Language Processing (NLP)** and **machine learning** techniques.  
The dataset (`test.csv`) contains unlabeled text messages that were cleaned, analyzed, and labeled for sentiment.  

The overall objective is to uncover employee sentiment trends, identify potential flight risks, and build a predictive model to forecast sentiment behavior.

---

## 🎯 Objectives
The main goals of the project are:

1. **Sentiment Labeling** – Automatically classify each message as **Positive**, **Negative**, or **Neutral**.  
2. **Exploratory Data Analysis (EDA)** – Explore and visualize sentiment trends and message patterns.  
3. **Employee Score Calculation** – Compute monthly sentiment scores for each employee.  
4. **Employee Ranking** – Rank employees by their monthly sentiment performance.  
5. **Flight Risk Identification** – Detect employees at risk (4+ negative messages in a month).  
6. **Predictive Modeling** – Build a regression model to predict future sentiment scores.

---

## 🧩 Dataset
- **File:** `test.csv`
- **Description:** Unlabeled dataset of employee messages.
- **Processed Columns:**
  - `clean_message` – Preprocessed text data.
  - `sentiment_label` – Labeled as Positive, Negative, or Neutral.
  - `month` – Extracted from message timestamps.
  - `avg_sentiment` – Monthly average sentiment score per employee.

---

## ⚙️ Tools & Libraries
Developed in **Python** using the following libraries:

| Category | Libraries |
|-----------|------------|
| Data Handling | `pandas`, `numpy` |
| NLP | `textblob`, `vaderSentiment`, `nltk` |
| Visualization | `matplotlib`, `seaborn` |
| Machine Learning | `scikit-learn` |
| Environment | Jupyter Notebook |


| Metric       | Value            |
| ------------ | ---------------- |
| **R² Score** | 0.57             |
| **RMSE**     | Moderate         |
| **MAE**      | Acceptable range |

## Author

Name: Muhammad Rameez

Submission Title: AI Project Submission — Employee Sentiment Analysis

## 🏁 Conclusion

This project demonstrates practical data science and NLP capabilities, showcasing how text analytics and machine learning can drive insights into employee sentiment and engagement.

## 📌 Notes

This project is part of an internal evaluation and should not be publicly distributed without authorization.
The code and data are for educational and assessment purposes only.
