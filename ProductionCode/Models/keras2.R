library(keras)
load("data_train/asci/all_asci_data.Rdata")

# build lenet ### KRIS - change to take 47 input - then rerun & repredict on validation data
# then load in ed's testing data & make predictions
lenet_model <- keras_model_sequential() %>% 
  layer_conv_2d(filters = 32, kernel_size = c(3, 3), activation = "relu",
                input_shape = c(48, 225, 3)) %>% 
  layer_max_pooling_2d(pool_size = c(2, 2)) %>% 
  layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = "relu") %>% 
  layer_max_pooling_2d(pool_size = c(2, 2)) %>% 
  layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = "relu") %>% 
  layer_flatten() %>% 
  layer_dense(units = 64, activation = "relu") %>% 
  layer_dropout(rate = 0.5) %>% 
  layer_dense(units = 10, activation = "softmax")

summary(lenet_model)

# keras compile
lenet_model %>% compile(
  loss = "categorical_crossentropy",
  optimizer = optimizer_rmsprop(),
  metrics = c("accuracy")
)

# train the model and store the evolution history
history <- lenet_model %>% fit(
  train.data, train.labels,
  epochs = 17, batch_size = 50,
  validation_split = 0.2
)

plot(history)

# generate predictions on new data


pred.class <- lenet_model %>% predict_classes(validation.data)

mean(validation.labels == pred.class)

table(validation.labels, pred.class)
#base::save.image("playground/Keras2.Rdata")
