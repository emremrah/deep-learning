FROM conda/miniconda3
RUN apt-get update && apt-get upgrade -y
RUN ["conda", "install", "jupyter", "scipy", "matplotlib", "pandas", "keras", "tensorflow", "theano", "Pillow", "-y"]
RUN ["pip", "install", "sklearn"]
EXPOSE 8888
WORKDIR /src
COPY jupyter-entrypoint.sh /usr/local/bin
ENTRYPOINT ["jupyter-entrypoint.sh"]
