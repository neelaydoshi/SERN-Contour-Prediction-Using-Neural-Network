---------------------------

### Title : SERN Contour Prediction Using Linear Regression

##### Author : Neelay Doshi

---------------------------

##### Description:
"Method of Characteristics" (MoC) is a well known method for designing nozzles. I have written a brief description of the theory, the programming methodology and the program itself, and have uploaded it [here](https://github.com/neelaydoshi/nozzle-design-using-MoC). This MoC code takes up to 5 seconds for generating a nozzle contour with 1000 characteristic lines. Moreover, writing a program for MoC is not trivial. Thus, to speed up the process of nozzle contour generation and to circumvent the task of writing the tricky program, I have trained a linear-regression model to predict the nozzle contour based on the inlet and exit Mach number. 

###### Note: 
At present the model only predicts the curved section of the nozzle and does not predict the very first segment of the nozzle, which is a straight ramp inclined at an angle (which depends on the inlet and exit Mach number). Neither is the model trained to predict the length of the nozzle. These two aspects will be implemented in the later versions soon.

##### Folders
-> data	: contains the datasets generated by the MoC code and the weights/parameters generated by the linear-regression model.

-> MoC		: contains the codes of MoC used for generating the datasets

-> results 	: contains images of the training and test data from the linear-regression model.

##### Files
costFuncReg :
-> function file 
-> computes cost-function (J) and gradient (grad)

create_feature_matrix :
-> function file 
-> creates feature matrix "X"

feature_scaling :
-> function file 
-> implements mean-normalization on feature-matrix "X" 

normalEq : 
-> function file 
-> computes the closed-form solution to linear-regression using the normal equations

main_1 :
-> executable
-> implements linear-regression on a single nozzle contour contained in "nozzle_1.txt" file

main_2_train :
-> executable
-> uses "nozzle_train.txt" to train linear-regression model

main_2_test :
-> executable
-> tests the parameters obtained from "main_2_train" on "nozzle_test.txt"

main_3_train_normalEq :
-> executable
-> uses "nozzle_train.txt" to obtain the closed-form solution to linear-regression using the normal equations

main_3_test_normalEq :
-> executable
-> tests the parameters obtained from "main_3_train_normalEq" on "nozzle_test.txt"

---------------------------















