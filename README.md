# Neural Networks from Scratch

Authors: [Alberto Marinelli](https://github.com/AlbertoMarinelli), [Martina Melero Cavallo](https://github.com/mmc185)

## Goal
Our goal was to create from scratch an <b>Artificial Neural Network</b> able to solve both classification and regression problems. Although it works on different datasets, in our case it was tested on the monk problem and simple regression problems.

For this project, a Neural Network trained through a classical <b>Back-Propagation</b> (BP) approach and employing both the <b>momentum</b> gradient-based optimization technique and <b>L2-regularization</b> were implemented using the <b>MATLAB</b> programming language.
<br></br>
## Implementation
The creation of the weights of the Neural Network is implemented in the <em>init.m</em> function, which lets you choose your own architecture for the network by providing an array in which each element is the number of neurons for that specific layer (e.g. [2, 4, 1] creates a Neural Network in which the first layer has two neurons, the hidden layer has four neurons and there is a single output neuron; also, the biases are appropriately added).

The network can then be trained in batch using the <em>train.m</em> function by providing the weight matrices, the Training Set $\textbf{X} \in \mathbb{R}^{N\times I}$ ($N$ being the number of samples and $I$ the number of features), the targets $\textbf{T} \in \mathbb{R}^{N\times L}$ with $L$ output features, a maximum number of epochs, the learning rate $\eta$, the activation function of the hidden layer(s) and of the output layer, and, finally, the momentum and regularization coefficients $\alpha$ and $\lambda$ respectively.

The training calls, at each epoch, the <em>feedforward.m</em> function to compute the outputs of the network and the <em>backpropagation.m</em> algorithm to compute the gradient of the loss function with respect to the weights; ultimately, the weights are updated through <em>update_weights.m</em>. 

In the <em>update_weights.m</em> function the weight changes $\Delta \textbf{w}$ are computed and the weights updated; also, the momentum technique and L2-regularization are employed. To gain a better control of the different roles of the three hyperparameters, which are the learning rate $\eta$, the momentum coefficient $\alpha$ and the regularization coefficient $\lambda$, it was chosen to keep them separated in the following way:
<p align="center">
$\Delta \textbf{w}_{new} = \eta\delta_i\textbf{x} + \alpha\Delta \textbf{w} $
 </p>
<p align="center">
$\textbf{w} = \textbf{w} + \Delta \textbf{w}_{new} - \lambda \textbf{w}$
</p>
 
## Languages and Tools
<p align="left"> <a href="https://www.mathworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png" alt="matlab" width="40" height="40"/> </a></p>
