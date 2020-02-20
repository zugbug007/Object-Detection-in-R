#https://heartbeat.fritz.ai/object-detection-in-just-3-lines-of-r-code-using-tiny-yolo-b5a16e50e8a0
library(image.darknet)

yolo_tiny_voc <- image_darknet_model (type = 'detect', model = 'tiny-yolo-voc.cfg', 
                                      weights = system.file (package='image.darknet', 'models', 'tiny-yolo-voc.weights'), 
                                      labels = system.file (package='image.darknet', 'include', 'darknet', 'data', 'voc.names'))

x <- image_darknet_detect(file = imagePath, 
                            object = yolo_tiny_voc, threshold = 0.19)
