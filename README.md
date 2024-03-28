# Iran Women Life Freedom Protests


## Overview

Gender inequality and discrimination against women have been legally established in Iran for many decades. After the tragedy of the death of Mahsa Amini, the revolution movement was shaped by the Zan, Zendegi, Azadi (Women, Life, Freedom) slogan. It shows that people and government are not one, and people can not take any further injustice from the brutal regime. This movement wasn’t just about women’s hijab; it was about people’s daily life difficulties after the Islamic regime came into power.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the data sources used in analysis including the raw data.
-   `inputs/sketches` contains the original sketches used to plan the project and data analysis.
-   `other/LLM` contains our ChatGPT history
-   `data/cleaned_data` contains the cleaned dataset that was constructed.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Data Extraction

I accessed data from the Kaggle website for Daily Statistics of the 2022 Iran Protests. Here is the link to the data set: https://www.kaggle.com/datasets/justin2028/daily-statistics-of-the-2022-iran-protests?resource=download
The data is behind a sign-in.
To download the data, I scrolled down and download the Iran Protests Dataset (Ver 2.21.23).csv, and place it in my project data folder.


## Statement on LLM usage

Statement on LLM usage: Aspects of the code were written with the help of the autocomplete tool, ChatGPT. ChatGPT was used to resolve errors, clean up the data, create tables, and generate graphs. The entire chat history is available in `inputs/LLM/usage.txt`