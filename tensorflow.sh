echo " \n
import time \n
import tensorflow as tf \n
hello = tf.constant('Hello, TensorFlow!') \n
with tf.Session() as sess: \n
    sess.run(hello) \n
    a = tf.constant(10) \n
    b = tf.constant(32) \n
    sess.run(a+b) \n
    while True: \n
        time.sleep(5) \n
" > sample.py
