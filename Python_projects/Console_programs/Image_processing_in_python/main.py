from skimage.feature import blob_log
import glob
from skimage.io import imread

# Load image
example_file = glob.glob("star2.jpg")[0]
im = imread(example_file, as_gray=True)  # Fixed typo

# Detect blobs
blobs = blob_log(im, max_sigma=30, num_sigma=10, threshold=0.1)  # Avoid variable overwrite

# Count detected stars
numrows = len(blobs)
print("Number of stars count:", numrows)
