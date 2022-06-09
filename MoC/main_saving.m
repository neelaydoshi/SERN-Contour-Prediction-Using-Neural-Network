%%%%%%%%%%%%%%
% Title  : Using Method of Characteristics for SERN Design
% Author : Neelay Doshi
%%%%%%%%%%%%%%
%
% This file generates the following datasets:
% -> nozzle_1
% -> nozzle_train 
% -> nozzle_test
%
%%%%%%%%%%%%%%


%% %%%%%%%%%%%%
% Training Dataset
clc
clear
format short g


%%%%%%%%%%%%%%
n       = 50;
gamma   = 1.4;
i = 0;

%%%%%%%%%%%%%%
% open file and erase previous content
fileID = fopen('data/nozzle_train.txt', 'w');
%
fprintf('############# \n');
for M0 = 1.5:0.1:2.4

    for Me = 3:0.1:5
        
        i = i+1;
        fprintf('i = %d \t M0 = %.2f \t Me = %.2f \n', i, M0, Me);

        Table = MoC(M0, Me, n, gamma);
        
        fprintf(fileID,'%.4f,%.4f,%.2f,%.2f\n', Table);
        
    end
end

%%%%%%%%%%%%%%
% close file
fclose(fileID);    

%%%%%%%%%%%%%%
% print summary
fprintf('############# \n');
fprintf('Number of Nozzles \t\t : %d \n', i );
fprintf('Number of Training Examples \t : %d \n', i*n );
fprintf('############# \n');

%% %%%%%%%%%%%%
% Testing Dataset
clc
clear
format short g


%%%%%%%%%%%%%%
n       = 50;
gamma   = 1.4;
i = 0;

%%%%%%%%%%%%%%
% open file and erase previous content
fileID = fopen('data/nozzle_test.txt', 'w');
fprintf('############# \n');
for M0 = 1.55 : 0.2 : 2.35

    for Me = 3.05 : 0.2 : 4.85
        
        i = i+1;
        fprintf('i = %d \t M0 = %.2f \t Me = %.2f \n', i, M0, Me);

        Table = MoC(M0, Me, n, gamma);
        fprintf(fileID,'%.4f,%.4f,%.2f,%.2f\n', Table);
    end
end

%%%%%%%%%%%%%%
% close file
fclose(fileID);    

%%%%%%%%%%%%%%
% print summary
fprintf('############# \n');
fprintf('Number of Nozzles \t\t : %d \n', i );
fprintf('Number of Testing Examples \t : %d \n', i*n );
fprintf('############# \n');


