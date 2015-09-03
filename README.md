# Caffe-Experiments
Collection of solvers, models of my experiments.

# Usage
 - Layer definition
    - Add the necessary paths to dataset.
    - Apply necessary transforms - Crop, mean, scale etc.
    - Fix Batchsize
    - Fix number of feature maps, kernel size, stride etc.
    - Fix activation function
    - Choose your loss function

 - Solver
     - Add the relative path to layer definition
     - Add snapshot prefix
     - Add iterations, max iterations, learning rate, solver type, etc.

Then create a script similar to train_lent.sh in examples/mnist folder with the solver file as arguments and run it for training each layer.

**Note** : For training layer_(n), we must fix the weights till layer_(n-1) (copy weights from layer_(n-1) and set lr_param to zero). Do the necessary changes as above and edit the *layer2/finetune_training.sh* and fix the paths. Point the *weights* parameter to the snapshot of layer1 to copy weights and use the *solver* of layer2. You can extend the same procedure to multiple layers as you please.