% This script prepares the javaplex library for use

clc; clear all; close all;
% clear import;

javaaddpath('./lib/javaplex.jar');
import edu.stanford.math.plex4.*;

javaaddpath('./lib/plex-viewer.jar');
import edu.stanford.math.plex_viewer.*;

cd './utility';
addpath(pwd);
cd '..';


%stream.addElement([0, 1]);
%stream.addElement([0, 2]);
%stream.addElement([1, 2]);
%stream.addElement([1,8],2);
%stream.addElement([5,3],2);
%stream.addElement([3,7],3);