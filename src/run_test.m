w = init ([17, 3, 1]);
tic
w2 = train (w, training, tr_target, 500, 0.8, "tanh", "sigmoid", 0.7, 0);
toc
y_pred = predict (w2, test, "tanh", "sigmoid");
acc = accuracy (y_pred, ts_target, 0.5)