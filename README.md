# <Project Title>
* **Author**: Kris Walker, github: [Taudin](<url link to github profile>)
* **Major**: Statistics
* **Year**: 2021

# Type of project
Deep learning for automated data entry of paper surveys

# Purpose (including intended audience)
Due to both the pandemic and the Science building move, this research was delayed. This is an effort to repackage and document the status of the research, with the goal that a new researcher could use it to pick up where we left off.

# Explanation of files

* `<file>` - <In words, what does it do>
    - Variables: <If data, explain key variables here>
* `BlankSurveys` This folder contains blank copies of each survey type (ASCI, pre-class survey, post-class survey) along with a new survey template.
* `CloudResources` Some instructions on how to access GPU power (we mostly used AWS, so those instructions have more detail and explanation).
    - amazon.md
    - google.md
    - sony.md
* `JMM` Contains graphics along with screenshots of model results and TFRuns output that were used for the 2020 Joint Mathematics Meeting.
* `ProductionCode` Contains the preprocessing code along with two .Rdata objects. 
    - Models: Three models that were used producing the most accurate results. There may be better ones yet to create...
    - ProcessingScripts: The most important scripts such as `preprocess.R` and `strip_functions.R` are here. Comments are as detailed as I could make them.
    - `asci_train_data_080519.Rdata`: Prepped ASCI training and validation data and labels ready for a model.
    - `train_and_validation_data.Rdata`: Prepped training and validation data and labels. (Don't quite remember making this...)
* `References` Here's where you'll find a little literature review, and some great deep learning books. I recommend the Chollet book.
* `Training` Training data (pdfs) and labels (csv) are located within this folder.
* `Validation` Validation data (pdfs) and labels (csv) are located here.

MyResearchDirectory.Rproj: 

# Completion status 

<as applicable> Pending steps include: 

- [ ] <thing 1>
- [ ] <thing 2>

## Enhancements: 
<List at least 2>

- [ ] <thing 1>
- [ ] <thing 2>

# Can someone else work on this project? 
<Yes/No>

# Public Display/dissemination
<List any existing public facing pages here>

# License
