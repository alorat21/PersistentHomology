
%%
%simple example of persistent homology

clear;
import edu.stanford.math.plex4.*;

%create a stream with filtration=0
stream = api.Plex4.createExplicitSimplexStream();

%create vertices with index
stream.addVertex(0);
stream.addVertex(1);
stream.addVertex(2);
stream.finalizeStream();

%input (dimension of homology, homology Z/2Z coefficent)
persistence = api.Plex4.getModularSimplicialAlgorithm(3,2);

%give betti numbers and intervals
intervals = persistence.computeIntervals(stream);

%give both intervals and their representative cycles
intervals = persistence.computeAnnotatedIntervals(stream);

options.filename = 'example';
options.max_filtration_value = 8;

%plot the barcode
options.file_format = 'eps';
plot_barcodes(intervals, options);

%%
%creating a vietois-rip stream with given metric space Z
% uncomment code below and run

% clear;
% import edu.stanford.math.plex4.*;

% max_dimension = 3;
% max_filtration_value = 4;
% point_cloud = [-1,0; 1,0; 1,2; -1,2; 0,3];
% 
% stream = api.Plex4.createVietorisRipsStream(point_cloud, max_dimension, max_filtration_value);
% persistence = api.Plex4.getModularSimplicialAlgorithm(max_dimension,2);
% 
% intervals = persistence.computeIntervals(stream);
% 
% options.filename = 'VRstream';
% options.max_filtration_value = max_filtration_value;
% options.max_dimension = max_dimension - 1;
% plot_barcodes(intervals, options);
