# 7-2 퍼셉트론으로 MNST인식하기 SGD 옵티마이저 282page
import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.optimizers import Adam

# 손글씨 데이터셋을 불러와서 학습용 데이터세과 테스트 데이터셋으로 분리
# 데이터 준비
( x_train, y_train), (x_test, y_test) = ds.mnist.load_data()
x_train = x_train.reshape( 60000, 784)
x_test=x_test.reshape( 10000, 784)
x_train = x_train.astype(np.float32)/255.0
x_test = x_test.astype(np.float32)/255.0
y_train = tf.keras.utils.to_categorical( y_train, 10)
y_test = tf.keras.utils.to_categorical( y_test, 10 )

dmlp = Sequential()
dmlp.add(Dense(units=1024, activation='relu', input_shape=(784,)))
dmlp.add(Dense(units=512, activation='relu'))
dmlp.add(Dense(units=512, activation='relu'))
dmlp.add(Dense(units=10, activation='softmax'))

dmlp.compile(loss='categorical_crossentropy', optimizer=Adam(learning_rate=0.001), metrics=['accuracy'])
hist = dmlp.fit(x_train, y_train, batch_size=128, epochs=50, validation_data=(x_test, y_test), verbose=2)
print('SGD 정확률=', dmlp.evaluate(x_test, y_test, verbose=0)[1]*100)

dmlp.save('dmlp_trained.h5')

import matplotlib.pyplot as plt

print.plot(hist.history['accuracy'])
print.plot(hist.history['val_accuracy'])
plt.title('Accuracy graph')
plt.xlabel('epochs')
plt.ylabel('accuracy')
plt.legend(['train', 'test'])
plt.gird()
plt.show()

plt.plot(hist.history['loss'])
plt.plot(hist.history['val_loss'])
plt.title('Loss graph')
plt.xlabel('epochs')
plt.ylabel('loss')
plt.legend(['train', 'test'])
plt.grid()
plt.show()


