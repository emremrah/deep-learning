#!/bin/bash
jupyter-notebook --allow-root --ip $(hostname -I) --port 8888
