# Project: Data Modeling with Postgres

## Purpose
The purpose of this database is to allow the analystics team at Sparkify to be able to access the data they've been collecting on song and user activity on their new streaming music app.  The data analysts are familiar with SQL and they are particularly interested in understanding what songs users are listening to.

## Objective
Create a Postgress database from data piped in from JSON logs and JSON metadata that has a database schema that is optimized for queries on song play analysis.

## Database schema

![alt text](/star_schema.png "Star Schema")

This schema was used to optimize queries about what songs are being played.  All the infomation needed for these queries can be found by querying the fact table.  For other queries, all other tables can be accessed by using only one JOIN.

## ETL Pipeline

The ETL pipeline used is as follows:
1. Extract data from the 'songs' JSON data, transform, and fill the 'songs' and 'artists' tables.
2. Extract data from the 'logs' JSON data, transform and fill the 'time' and 'users' tables.
3. Extract data from the 'logs' JSON data, perform a single JOIN query on the 'songs' and 'artists' table, transform, and fill in the 'songplays' fact table.

Given my limited experience with ETL pipelines, I feel like this is efficient enough given the size of the database.  I would welcome and feedback from the person reviewing this about why this ETL is a good one.  Thus far, this is beyond the scope of what has been taught in this course.

## How to use (Windows Powershell)

Create the database and tables:

```py create_tables.py```

Run etl process on song and log data:

```py etl.py```

Test queries can be found in the following jupyter notebook: 'test.ipynb'

## Context

A startup called Sparkify wants to analyze the data they've been collecting on songs and user activity on their new music streaming app. The analytics team is particularly interested in understanding what songs users are listening to. Currently, they don't have an easy way to query their data, which resides in a directory of JSON logs on user activity on the app, as well as a directory with JSON metadata on the songs in their app.

They'd like a data engineer to create a Postgres database with tables designed to optimize queries on song play analysis, and bring you on the project. Your role is to create a database schema and ETL pipeline for this analysis. You'll be able to test your database and ETL pipeline by running queries given to you by the analytics team from Sparkify and compare your results with their expected results.

### Project Description

In this project, you'll apply what you've learned on data modeling with Postgres and build an ETL pipeline using Python. To complete the project, you will need to define fact and dimension tables for a star schema for a particular analytic focus, and write an ETL pipeline that transfers data from files in two local directories into these tables in Postgres using Python and SQL.
