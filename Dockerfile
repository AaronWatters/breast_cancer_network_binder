FROM andrewosh/binder-base

MAINTAINER Dayanne de Castro <dayanne.castro@nyu.edu>

USER main

# see https://github.com/aadm/avo_explorer/blob/master/Dockerfile


RUN mkdir $HOME/.jupyter
RUN echo "c.NotebookApp.token = ''" >> $HOME/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.password=''" >> $HOME/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.password_required=False" >> $HOME/.jupyter/jupyter_notebook_config.py

pip install -r requirements.txt

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension