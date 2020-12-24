FROM jupyter/datascience-notebook

ARG req_file=requirements.txt
COPY requirements.txt /home/jovyan/

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build && \
    # jupyter labextension install jupyterlab_bokeh --no-build && \
    jupyter labextension install jupyterlab-theme-solarized-dark --no-build && \
    jupyter labextension install bqplot --no-build && \
    pip install -r requirements.txt && \
    jupyter labextension install nbdime-jupyterlab --no-build && \
    jupyter serverextension enable --py jupyterlab_git && \
    # jupyter labextension install @jupyterlab/plotly-extension --no-build && \
    # jupyter labextension install jupyterlab-chart-editor --no-build && \
    # jupyter labextension install plotlywidget --no-build && \
    # jupyter labextension install @jupyterlab/latex --no-build && \
    # jupyter labextension install jupyter-matplotlib --no-build && \
    # jupyter labextension install jupyterlab-drawio --no-build && \
    # jupyter labextension install jupyter-leaflet --no-build && \
    # jupyter labextension install qgrid --no-build && \
    jupyter lab build --dev-build=False --minimize=False && \
        jupyter lab clean && \
        jlpm cache clean && \
        npm cache clean --force && \
        rm -rf $HOME/.node-gyp && \
        rm -rf $HOME/.local && \
    fix-permissions $CONDA_DIR $HOME

WORKDIR /home/jovyan/
COPY gitignore .gitignore
