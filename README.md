# Iran Women Life Freedom Protests

## Overview

The 2022 Iran protests were a significant period of civil unrest that brought attention to social inequality, political repression, and human rights violations. However, limited official data on the protests is available, which means we have to rely on estimates from organizations like the Human Rights Activists News Agency (HRANA). In this paper, we have analyzed a dataset compiled from HRANA's reports to provide insights into the dynamics of the protests, the extent of government crackdowns, and the scale of public discontent.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the data sources used in analysis including the raw data.
-   `inputs/sketches` contains the original sketches used to plan the project and data analysis.
-   `other/LLM` contains our ChatGPT history
-   `data/cleaned_data` contains the cleaned dataset that was constructed.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Data Extraction

I accessed data from the Kaggle website for Daily Statistics of the 2022 Iran Protests. Here is the link to the data set: [Kaggle Link](https://www.kaggle.com/datasets/justin2028/daily-statistics-of-the-2022-iran-protests?resource=download)

The data is behind a sign-in and to download the data, I scrolled down and download the Iran Protests Dataset (Ver 2.21.23).csv, and place it in my project data folder.

## Statement on LLM usage

Statement on LLM usage: Aspects of the code were written with the help of the autocomplete tool, ChatGPT. ChatGPT was used to resolve errors, clean up the data, create tables, and generate graphs. The entire chat history is available in `other/LLM/usage.txt`
