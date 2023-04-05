# neural-network-from-scratch

Authors: [Alberto Marinelli](https://github.com/AlbertoMarinelli), [Martina Melero Cavallo](https://github.com/mmc185)

## :bulb: Goal
Our goal was to create from scratch an Artificial Neural Network able to solve both classification and regression problems. Although it works on different datasets, in our case it was tested on the monk problem and simple regression problems.

For this project, a Neural Network trained through a classical Back-Propagation (BP) approach and employing both the momentum gradient-based optimization technique and L2-regularization were implemented using the MATLAB programming language.
<br></br>
## :wrench: Structure
The creation of the weights of the Neural Network is implemented in the init.m function, which lets you choose your own architecture for the network by providing an array in which each element is the number of neurons for that specific layer (e.g. [2, 4, 1] creates
a Neural Network in which the first layer has two neurons, the hidden layer has four neurons and there is a single output neuron; also, the biases are appropriately added).

The network can then be trained in batch using the train.m function by providing the weight matrices, the Training Set $\textbf{X} \in \mathbb{R}^{N\times I}$ ($N$ being the number of samples and $I$ the number of features), the targets $\textbf{T} \in \mathbb{R}^{N\times L}$ with $L$ output features, a maximum number of epochs, the learning rate $\eta$, the activation function of the hidden layer(s) and of the output layer, and, finally, the momentum and regularization coefficients $\alpha$ 
and $\lambda$ respectively.

The training calls, at each epoch, the feedforward.m function to compute the outputs of the network and the backpropagation.m algorithm to compute the gradient of the loss function with respect to the weights; ultimately, the weights are updated through
update weights.m. 

In the update weights.m function the weight changes $\Delta \textbf{w}$ are computed and the weights updated; also, the momentum technique and L2-regularization are employed. To gain a better control of the different roles of the three hyperparameters, which are the learning rate $\eta$, the momentum coefficient $\alpha$ and the regularization coefficient $\lambda$, it was chosen to keep them separated in the following way:

$\Delta \textbf{w}_{new} = \eta\delta_i\textbf{x} + \alpha\Delta \textbf{w}_{old}$

$\textbf{w} = \textbf{w} + \Delta \textbf{w}_{new} - \lambda \textbf{w}$
