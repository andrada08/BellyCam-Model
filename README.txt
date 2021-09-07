1. install DEEPLABCUT as usual (https://deeplabcut.github.io/DeepLabCut/docs/intro.html)
2. Adjust configuration file
Open \BellyCam-Model\config.yaml in a text editor. Change the following:

project path: the path to config.yaml

3. Run DLC to label videos
The following steps are substeps of the DLC pipeline described in detail here. There are different ways how you can run this code. Here I describe my way (as Windows user).

Open Command Prompt (run as administrator).
activate DLC-GPU (if you have installed the version of DLC that uses GPUs, otherwise change this statement accordingly)
(optional) pip install --upgrade deeplabcut
ipython
import deeplabcut
config_path = r'_path to config.yaml_' (the r is only necessary for Windows)
videos = [_list of paths to the videos you want to analyse_]
deeplabcut.analyze_videos(config_path, videos, save_as_csv = True) (the last argument saves the results also as a .csv file, which can be easily read by many softwares, e.g. Matlab; otherwise only an .h5 file is saved)
(optional) deeplabcut.filterpredictions(config_path, videos) (this smooths the trajectories of the detected markers; look up the function for details)