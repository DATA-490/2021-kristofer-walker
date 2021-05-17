# <Project Title>
* **Author**: Kris Walker, github: [Taudin](<url link to github profile>)
* **Major**: Statistics
* **Year**: 2021

# Type of project
Deep learning for automated data entry of paper surveys

# Purpose (including intended audience)
Due to both the pandemic and the Science building move, this research was delayed. This is an effort to repackage and document the status of the research, with the goal that a new researcher could use it to pick up where we left off.

# Explanation of files

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

- [ ] Prediction data needs to be repackaged into a dataframe that's ready for analysis.
- [ ] Code needs to be added into the preprocessing stage that makes it possible to read survey ID's.
- [ ] The PDF scanning process needs adjustment.
- [ ] The strip processing needs read area generalization.

## Enhancements: 

- [ ] It would be powerful to generalize this for different paper surveys involving Likert scale responses.
- [ ] We should try other optical character recognition software, where a user may highlight readable areas that can be translated to x-y-coordinates.
- [ ] Maybe these PDF processing functions can be turned into an R package!

# Can someone else work on this project? 
Yes

# Public Display/dissemination
Poster presentation at the 2020 Joint Mathematics Meeting [here](./JMM/JMM 2020 Deep Learning poster.pdf)

# License
