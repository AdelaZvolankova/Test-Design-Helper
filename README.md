# Test Design Helper

This test suite contains smoke and regression tests for the Test Design Helper web application designed and run by Tesena, available at https://testdesign.tesena.com.

## Prerequisites

Before running the tests, ensure that you have the following software installed:

- Python (version 3.6 or later)
- Robot Framework
- Robot Framework SeleniumLibrary
- Robot Framework DataDriver
- Google Chrome (for running tests in a web browser)
- Chrome driver

### Installing Python

If you don't have Python installed, you can download it from the official Python website: https://www.python.org/downloads

### Installing chrome driver

Download ChromeDriver:
- Visit the ChromeDriver Downloads pag: https://developer.chrome.com/docs/chromedriver/downloads.
- Find the appropriate version of ChromeDriver based on your Chrome browser version.
- Download the ChromeDriver executable file (chromedriver.exe) for your operating system (e.g., Windows, macOS, or Linux).
Set Up the ChromeDriver Executable:
- Make sure the directory containing chromedriver.exe is added to your system’s PATH environment variable.

### Installing Robot Framework and Libraries

You can install Robot Framework and the required libraries using pip, the Python package installer. Open your terminal or command prompt and run the following commands:

- pip install robotframework 
- pip install robotframework-seleniumlibrary 
- pip install robotframework-datadriver

## Running Tests

1. Clone or download the Test Design Helper repository to your local machine.

2. Navigate to the project directory in your terminal or command prompt.

3. To run all ui tests, execute the following command:

robot --outputdir report tests/ui.robot

This command will run all tests in the `ui.robot` file and generate a report in the `report` directory.

4. To run a specific test case or a subset of tests, you can use the `--test` or `--include` options. For example:

robot --outputdir report --test "TC_01 User can see Homepage" tests/ui.robot 
robot --outputdir report --include "Smoke" tests/ui.robot

## Changing test environment

There are currently 2 test environments: test and prod. Tests are running against prod by default. You can change it by running adding 
`--variable environment:test` to run command.
You can change the default option by updating the variable ${environment} in respective robot file (`ui.robot` or `data_driven_test_csv_data.robot` or `data_driven_test.robot`).


## Project Structure

The project has the following structure:
- `Configs/`: Contains configuration files for the test suite.
- `Resources/`: Contains resource files with keywords and variables used in the tests.
- `TestData/`: Contains data files used for data-driven testing.
- `Tests/`: Contains the test suite files 
- `README.md`: This file, containing instructions for running the tests.
