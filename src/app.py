import cv2
import numpy as np

# Create a black image
img = np.zeros((500, 500, 3), dtype=np.uint8)
cv2.putText(img, 'Hello OpenCV!', (50, 250), cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 255, 255), 2)

# Show image in OpenCV window
cv2.imshow('Display Window', img)
cv2.waitKey(0)  # Wait for key press
cv2.destroyAllWindows()
