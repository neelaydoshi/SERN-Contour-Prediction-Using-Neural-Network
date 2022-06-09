---------------------------

# Title : SERN Contour Prediction Using Neural Network
### Author : Neelay Doshi

---------------------------

### Introduction :

We will be using neural-newtwork (**TensorFlow**) to predict the nozzle contour in the following two projects:
1. We will first see if an neural-network can be trained to fit the the contour of a single nozzle geometry wherein the input features is simply the x-coordinate (`x`) and the desired output prediction is its y-coordinate (`y`). 
2. Next, we will see if we can extend this to predict the nozzle contour of any nozzle given the input variables x-coordinate (`x`), inlet Mach number (`M_0`) and exit Mach number (`M_e`). The model will be tested upon a seperate validation dataset.

###### Note:
Only the curved section of the nozzle is being saved. The very first segment (which is a straight line) is discarded. To understand the code refer [here](https://github.com/neelaydoshi/nozzle-design-using-MoC).

---------------------------

##### Folders
-> MoC	: contains the files for generating the training and validation dataset. Read the `README.md` file inside the folder for further information.

---------------------------

##### Files

`SERN_Contour_Prediction_Using_Neural_Network.ipynb`

-> contains the codes of the aforementioned neural-network

---------------------------

# Conclusion 

* The neural-network can easily predict the curve for a single nozzle.
* For multiple nozzle it is able to predict well for large nozzles, but not so for smaller nozzles. 
* Further modification in the neural-network could lead to better prediction for multiple nozzles as well. 
* Once an apporpriate model is found and trained, the forward-propogation step of neural-network can run and predict the nozzle profile much faster than MoC code ([here](https://github.com/neelaydoshi/nozzle-design-using-MoC)) and thus save time.
*The great benifit of using neural-network over linear-regression is that we do not need to hypothesize with various other complex input features as was done in my previous project ([here](https://github.com/neelaydoshi/nozzle-contour-prediction-using-linear-regression)).

---------------------------


