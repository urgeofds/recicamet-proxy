# Ambient Weather Data Proxy Server

This project implements a simple HTTP server that receives ambient weather data from a console every 5 minutes, processes the data, and attempts to send it to a remote server. If the transmission fails, the data is saved locally in a CSV file, and if the failure count exceeds a predefined limit, the Raspberry Pi is restarted.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Configuration](#configuration)
- [How to Run](#how-to-run)
- [Endpoints](#endpoints)
- [Data Processing](#data-processing)
- [Error Handling](#error-handling)
- [License](#license)

## Features

- Receives weather data via HTTP GET requests.
- Converts temperature and wind speed units.
- Handles data persistence using CSV files.
- Sends data to a specified API endpoint.
- Automatically restarts the Raspberry Pi after a specified number of failed attempts to send data.

## Requirements

- Python 3.x
- Required packages:
  - `pandas`
  - `requests`
  - `numpy`

You can install the required packages using pip:

```bash
pip install pandas requests numpy
