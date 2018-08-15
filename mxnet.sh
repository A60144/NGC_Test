echo "import time \n
import mxnet as mx \n
a = mx.nd.ones((2,3), mx.gpu()) \n
print (a*2).asnumpy() \n
while True: \n
    time.sleep(5)
" > demo.py
