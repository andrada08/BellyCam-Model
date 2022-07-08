
%This script can be used to increase the contrast of images to be labeled
imgdir = 'C:\Users\EnnyB\Documents\GitHub\BellyCam-Model\labeled-data\2022-03-19_103_EB013_bellyCam'
imgs = dir(fullfile(imgdir,'*.png'))

for id = 1:length(imgs)
    tmp = imread(fullfile(imgs(id).folder,imgs(id).name));
    tmp = localcontrast(tmp);
    imwrite(tmp,fullfile(imgs(id).folder,imgs(id).name),'png')
end