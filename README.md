# MLOPS_group3

### Project structure

------------

    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── Rice_Image_Dataset <- External dataset
    │   ├── Arborio       
    │   ├── Basmati        
    │   ├── Ipsala
    │   ├── Jasmine        
    │   └── Karacadag
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    |
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    |
    |
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io


--------

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>

## DESCRIPTION PROJECT DTU-MLOPS  

 
### Goal project 

The goal of this project is to apply different techniques learned during the course. To achieve this, our project will consist of classifying diverse types of rice grains based on their images. For this purpose, we will utilize machine learning techniques to build a reliable classification model capable of distinguishing between various rice types.  

 

### Framework 

For this project, we are going to use skimage (or scikit-image), a Python library. This package is a framework commonly used for image processing. It includes algorithms for segmentation, color transformation, characteristic description ...Its popularity ensures the availability of extensive online resources and documentation, making it ideal for our project. We plan to leverage this framework to preprocess and manipulate the dataset using various techniques, which will enhance the accuracy and robustness of our classification model. Some of the techniques we are going to implement are image resizing (to ensure compatibility with the models), grayscale conversion (for simplify computations), augmentation (techniques such as rotation, flipping, brightness adjustments ...), normalization (scaling pixel values to a range of [0,1] for improved convergence during training), as well as other techniques we find useful during our model and training development.  

### Dataset 

The dataset provided is available on Kaggle https://www.kaggle.com/datasets/muratkokludataset/rice-image-dataset. The dataset consists of 75k images, and 5 types of rice grains where in each folder, there are around 15k images of that grain rice. The type of rice grains is Arborio, Basmati, Ipsala, Jasmine and Karacadag. In the kaggle dataset, there is also a second dataset consisting of features like shape, color and other features for a machine learning model, but we will not focus on that dataset due to the fact that we want to develop an image classifying model.  
 
### Models 

For this project, we are initially going to implement a CNN network for image classification, like the neural networks implemented during the exercises of the course. We may use ResNet, or another neural network we find interesting to work with.  
