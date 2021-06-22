# 60secs project page

# Table of Contents
- [Introduction](#introduction)
- [Data collection for 60secs](#data-collection-for-60secs)
- [Analysis of 60secs data](#analysis-of-60secs-data)

--------------------------------------------------------------------------------
## Introduction
60secs is a linux server data collection and analysis tool
- Based on the ideas in [Brendan Gregg's "60secs to performance analysis"](http://www.brendangregg.com/Articles/Netflix_Linux_Perf_Analysis_60s.pdf)
- Do data collection for: uptime dmesg vmstat mpstat pidstat iostat free nicstat sar_dev sar_tcp do_top perf sched_switch interrupts flamegraph toplev power watch
    - Designed to run on cloud servers. Developed using debian based servers.
    - Uses standard linux utilities
    - Bash scripts and awk are the glue running the scripts
    - I have a utility to launch the script on servers and retrieve the output from the servers into an archive dir
- Data analysis (requires python)
    - combine (average) data from 100s of servers
    - compute summary data (min, max, avg) and  pXX stats (like p50, p90, p95, etc) across the servers
    - output is an Excel spreadsheet: uses John McNamara xlsxwriter
    - summary sheet (min, max, avg, pXX stats)
    - chart sheet
    - 1 sheet per type-of-data-collected (ie. 1 sheet per vmstat data or perf data)


The project web page is [https://patinnc.github.io](https://patinnc.github.io)

The source code repo is [https://github.com/patinnc/oppat](https://github.com/patinnc/oppat)

## Data collection for 60secs
Working on it

## Analysis of 60secs data
Working on it

