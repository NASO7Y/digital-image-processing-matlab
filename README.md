# digital_img_processing
The uploaded MATLAB code is a GUI-based project created using GUIDE. It includes various buttons, menus, and axes to perform different operations on images. Here's a detailed breakdown of its components and functionality:

1. General Structure
The project is structured around a GUI built with .fig files, which provide interactive elements like buttons and display axes.
Operations are triggered by Callback functions tied to specific user actions (e.g., button clicks).
2. Core Functionalities
Image Manipulation
Basic Operations: Addition, subtraction, multiplication, and division of images.
Color Channel Adjustments: Manipulating individual RGB channels (e.g., creating reddish or bluish images).
Thresholding: Single and double thresholding for segmentation.
Histogram Processing:
Computing histograms for grayscale and RGB images.
Histogram equalization for contrast enhancement.
Filters
Linear Filters: Average and Laplacian filters for smoothing and edge detection.
Nonlinear Filters:
Maximum, minimum, rank, and median filters for noise reduction.
Boundary Extraction
Extracting internal and external boundaries of binary images using erosion and dilation.
Morphological Operations
Basic Operations: Erosion, dilation, opening, and closing.
Morphological Gradient: Computing the difference between dilation and erosion.
3. GUI Elements
Axes: Multiple axes (axes18 to axes22) for displaying original and processed images.
Buttons: Buttons for executing specific functions (e.g., "Load Image", "Apply Filter").
Menus: Dropdown menus for selecting operations.
4. Code Highlights
The code makes heavy use of MATLAB's Image Processing Toolbox for functions like imread, imshow, imfilter, imhist, and rgb2gray.
Modular design with a separate Callback function for each operation, allowing easy extension or modification.
5. Example Functionalities
Edge Detection:
Implements Sobel, Prewitt, and Roberts operators for edge detection.
Image Arithmetic:
Adds or subtracts a constant value to/from an image.
Solarization:
Applies a threshold-based solarization effect to grayscale images.
