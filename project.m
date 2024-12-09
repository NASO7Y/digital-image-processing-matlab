function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 23-May-2024 17:29:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes18)
cla(handles.axes19)
cla(handles.axes20)
cla(handles.axes21)
cla(handles.axes22)
cla(handles.axes23)
delete(findall(findall(gcf,'Type','axe'),'Type','text'));

% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread('peppers.png');
image=rgb2gray(image);


edge_s=edge(image,'sobel');
edge_p=edge(image,'prewitt');
edge_r=edge(image,'roberts');

axes(handles.axes18),imshow(image);
title('original',"Color","Y");
axes(handles.axes19),imshow(edge_s);
title('sobel operator',"Color","Y");
axes(handles.axes20),imshow(edge_p);
title('prewitt operator',"Color","Y");
axes(handles.axes21),imshow(edge_r);
title('roberts operator',"Color","Y");

% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

image = imread('text.png');
structure = ones(2,2);
erosion_img = imerode(image, structure);

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(erosion_img),title("Image After erosions","Color","Y");
% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('text.png');
structure = ones(2,2);
dilation_img = imdilate(image, structure);

axes(handles.axes18),imshow(image);title("Original Image","Color","Y")
axes(handles.axes19),imshow(dilation_img);title("Image After Dilation","Color","Y")

% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('text.png');
image = double(image);
image = imnoise(image,'salt & pepper',.01);
structure = ones(2,2);
open_img = imopen(image, structure);

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(open_img),title("Image After Opening","Color","Y");

% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
image = im2bw(image);
structure = ones(3,3);
erosion_img = imerode(image, structure);
internal = abs(image - erosion_img);

axes(handles.axes18),imshow(image),title('Original Image',"Color","Y");
axes(handles.axes19),imshow(internal),title('Internal Boundry',"Color","Y");

% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
image = im2bw(image);
structure = ones(3,3);
dilation_img = imdilate(image, structure);
external = abs(dilation_img - image);

axes(handles.axes18),imshow(image),title('Original Image',"Color","Y");
axes(handles.axes19),imshow(external),title('External Boundry',"Color","Y");

% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
image = im2bw(image);
structure = ones(3,3);
erosion_img = imerode(image, structure);
dilation_img = imdilate(image, structure);
morphological = abs(dilation_img - erosion_img);

axes(handles.axes18),imshow(image),title('Original Image',"Color","Y");
axes(handles.axes19),imshow(morphological),title('Morphological Gradient',"Color","Y");

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
noisy_image = imnoise(image,'salt & pepper',.05);

median_image = medfilt2(noisy_image,[3 3]);

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(noisy_image),title("Noisy Image","Color","Y");
axes(handles.axes20),imshow(median_image),title("Image After Median Filter","Color","Y");

% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
noisy_image = imnoise(image,'salt & pepper',.05);

% Average Filter (Low Pass)
average_image = imfilter(noisy_image,fspecial('average',[3 3]));

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(noisy_image),title("Noisy Image","Color","Y");
axes(handles.axes20),imshow(average_image),title("Image After Average Filter","Color","Y");
% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
noisy_image = imnoise(image,'salt & pepper',.05);

Rank_image = ordfilt2(noisy_image,7,ones(3,3));

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(noisy_image),title("Noisy Image","Color","Y");
axes(handles.axes20),imshow(Rank_image),title("Image After Rank Order Filter","Color","Y");
% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
noisy_image = imnoise(image,'salt & pepper',.05);

mask = [1/8 1/8 1/8;
        1/8  0  1/8;
        1/8 1/8 1/8];

img_double = im2double(noisy_image);
outlier_image = filter2(mask,img_double);
[r,c] = size(image);
diff = abs(img_double - outlier_image);
clean = zeros(r,c);
for i = 1:r
    for j = 1:c
if diff(i,j) > 0.4
    clean(i,j) = outlier_image(i,j);
else
    clean(i,j) = img_double(i,j);
end
    end
end

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(noisy_image),title("Noisy Image","Color","Y");
axes(handles.axes20),imshow(clean),title("Image After Outlier Method","Color","Y");
% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
noisy_image = imnoise(image,'gaussian');

[r, c] = size(image);
mask = zeros(r, c);
for i = 1:10
    mask(:,:,i) = imnoise(image,'gaussian');
end
res = (mean(mask,3))/255;

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(noisy_image),title("Noisy Image","Color","Y");
axes(handles.axes20),imshow(res),title("Image Averaging","Color","Y");

% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('eight.tif');
noisy_image = imnoise(image,'gaussian');

avg_image = imfilter(noisy_image,fspecial('average', [3 3]));

axes(handles.axes18),imshow(image),title("Original Image","Color","Y");
axes(handles.axes19),imshow(noisy_image),title("Noisy Image","Color","Y");
axes(handles.axes20),imshow(avg_image),title("Average Filter","Color","Y");

% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\9.jpg");
img2 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\4.jpg");

subimg = imsubtract(img1,img2);
sub1 = img1 - 120;
sub2 = img2 - 120;

axes(handles.axes18);
imshow(img1);
title('Image 1',"Color","Y");

axes(handles.axes19);
imshow(img2);
title('Image 2',"Color","Y");

axes(handles.axes20);
imshow(subimg); 
title('Subtraction',"Color","Y");

axes(handles.axes21);
imshow(sub1); 
title('Subtract 120 From Image1',"Color","Y");

axes(handles.axes22);
imshow(sub2); 
title('Subtract 120 From Image2',"Color","Y");
% --- Executes on button press in add3.
function add3_Callback(hObject, eventdata, handles)
% hObject    handle to add3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

img1 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\9.jpg");
img2 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\4.jpg");

addimg = imadd(img1,img2); 
add1 = img1 + 120;
add2 = img2 + 120;

axes(handles.axes18);
imshow(img1);
title('Image 1',"Color","Y");

axes(handles.axes19);
imshow(img2);
title('Image 2',"Color","Y");

axes(handles.axes20);
imshow(addimg); 
title('Addition',"Color","Y");

axes(handles.axes21);
imshow(add1); 
title('Add 120 to Image1',"Color","Y");

axes(handles.axes22);
imshow(add2); 
title('Add 120 to Image2',"Color","Y");

% --- Executes on button press in mult.
function mult_Callback(hObject, eventdata, handles)
% hObject    handle to mult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\9.jpg");
img2 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\4.jpg");
multimg = immultiply(img1,img2);
mult1 = img1 * 2;
mult2 = img2 * 2;

axes(handles.axes18);
imshow(img1);
title('Image 1',"Color","Y");

axes(handles.axes19);
imshow(img2);
title('Image 2',"Color","Y");

axes(handles.axes20);
imshow(multimg); 
title('Multiplication',"Color","Y");

axes(handles.axes21);
imshow(mult1); 
title('Multiply Image1 by 2',"Color","Y");

axes(handles.axes22);
imshow(mult2); 
title('Multiply Image2 by 2',"Color","Y");

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\9.jpg");
img2 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\4.jpg");
divimg = imdivide(img1,img2);
div1 = img1 / 3;
div2 = img2 / 3;

axes(handles.axes18);
imshow(img1);
title('Image 1',"Color","Y");

axes(handles.axes19);
imshow(img2);
title('Image 2',"Color","Y");

axes(handles.axes20);
imshow(divimg); 
title('Division',"Color","Y");

axes(handles.axes21);
imshow(div1); 
title('Image1 Divided by 2',"Color","Y");

axes(handles.axes22);
imshow(div2); 
title('Image1 Divided by 2',"Color","Y");

% --- Executes on button press in avg.
function avg_Callback(hObject, eventdata, handles)
% hObject    handle to avg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img1 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\9.jpg");
img2 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\4.jpg");
avarege = (img1 + img2) / 2;

axes(handles.axes18);
imshow(img1);
title('Image 1',"Color","Y");

axes(handles.axes19);
imshow(img2);
title('Image 2',"Color","Y");

axes(handles.axes20);
imshow(avarege); 
title('Average Of Images',"Color","Y"); 
% --- Executes on button press in comp.
function comp_Callback(hObject, eventdata, handles)
% hObject    handle to comp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
RGBImage = imread('peppers.png');

GrayImage = rgb2gray(RGBImage);

SolarizedImage = GrayImage;
SolarizedImage(GrayImage < 128) = 255 - GrayImage(GrayImage < 128);

axes(handles.axes18);
imshow(RGBImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(GrayImage);
title('Grayscale Image',"Color","Y");

axes(handles.axes20);
imshow(SolarizedImage);
title('Solarized Image',"Color","Y");

% --- Executes on button press in chg.
function chg_Callback(hObject, eventdata, handles)
% hObject    handle to chg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
img=cat(3,R,G,B+100);


axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('Bluish Image',"Color","Y");

% --- Executes on button press in CHR.
function CHR_Callback(hObject, eventdata, handles)
% hObject    handle to CHR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
img=cat(3,R+100,G,B);


axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('Reddish Image',"Color","Y");

% --- Executes on button press in chb.
function chb_Callback(hObject, eventdata, handles)
% hObject    handle to chb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
img=cat(3,R,G+100,B);


axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('Greenish Image',"Color","Y");

% --- Executes on button press in elr.
function elr_Callback(hObject, eventdata, handles)
% hObject    handle to elr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);

BG = image;
BG(:,:,1) = 0;

axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(BG);
title('RGB To BG',"Color","Y");

% --- Executes on button press in elg.
function elg_Callback(hObject, eventdata, handles)
% hObject    handle to elg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);

RB = image;
RB(:,:,2) = 0;

axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(RB);
title('RGB To RB',"Color","Y");

% --- Executes on button press in elb.
function elb_Callback(hObject, eventdata, handles)
% hObject    handle to elb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);

RG = image;
RG(:,:,3) = 0;

axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(RG);
title('RGB To RG',"Color","Y");

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rgbs.
function rgbs_Callback(hObject, eventdata, handles)
% hObject    handle to rgbs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread('peppers.png');

red = x(:,:,1);
green = x(:,:,2);
blue = x(:,:,3);

stretched_red = imadjust(red);
stretched_green = imadjust(green);
stretched_blue = imadjust(blue);

stretched_RGBimage = cat(3, stretched_red, stretched_green, stretched_blue);

hist_original = imhist(x);
hist_stretched = imhist(stretched_RGBimage);

axes(handles.axes18);
imshow(x);
title('Original RGB Image',"Color","Y");
axes(handles.axes19);
bar(hist_original);
title('Hist of Original RGB Image',"Color","Y");

axes(handles.axes20);
imshow(stretched_RGBimage);
title('Stretched RGB Image',"Color","Y");
axes(handles.axes21);
bar(hist_stretched);
title('Hist of Stretched RGB Image',"Color","Y");

% --- Executes on button press in gst.
function gst_Callback(hObject, eventdata, handles)
% hObject    handle to gst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread('pout.tif');

stretched_image = imadjust(x);

hist_original = imhist(x);
hist_stretched = imhist(stretched_image);

axes(handles.axes18);
imshow(x);
title('Original Image',"Color","Y");
axes(handles.axes19);
bar(hist_original);
title('Hist of Original Image',"Color","Y");

axes(handles.axes20);
imshow(stretched_image);
title('Stretched Image',"Color","Y");
axes(handles.axes21);
bar(hist_stretched);
title('Hist of Stretched Image',"Color","Y");

% --- Executes on button press in ghist.
function ghist_Callback(hObject, eventdata, handles)
% hObject    handle to ghist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = imread("pout.tif");

histogram = zeros(1, 256);
    
for i = 0:255
    histogram(i + 1) = sum(x(:) == i);
end

axes(handles.axes18);
imshow(x);
axes(handles.axes19);
bar(histogram);
xlabel("gray level","Color","Y");
ylabel("# of pixels","Color","Y");

% --- Executes on button press in rgbh.
function rgbh_Callback(hObject, eventdata, handles)
% hObject    handle to rgbh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread('peppers.png');

% Separate RGB channels
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

% Initialize histogram arrays
redHist = zeros(256, 1);
greenHist = zeros(256, 1);
blueHist = zeros(256, 1);

% Calculate histograms for each channel
for i = 0:255
    redHist(i+1) = sum(redChannel(:) == i);
    greenHist(i+1) = sum(greenChannel(:) == i);
    blueHist(i+1) = sum(blueChannel(:) == i);
end

% Plot histograms

axes(handles.axes18);
imshow(rgbImage);
title('RGB Image',"Color","Y");
axes(handles.axes19);
bar(0:255, redHist, 'r');
title('Red Channel Histogram',"Color","Y");
axes(handles.axes20);
bar(0:255, greenHist, 'g');
title('Green Channel Histogram',"Color","Y");
axes(handles.axes21);
bar(0:255, blueHist, 'b');
title('Blue Channel Histogram',"Color","Y");

% --- Executes on button press in geq.
function geq_Callback(hObject, eventdata, handles)
% hObject    handle to geq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = imread("tire.tif");

x2 = imhist(x1);

cdf = cumsum(x2) / numel(x1);
equalized_image = uint8(255 * cdf(x1 + 1));
axes(handles.axes18);
imshow(equalized_image);
title('Equalized Image',"Color","Y");

axes(handles.axes19);
imshow(x1);
title("original image","Color","Y");

%display hist of original image
axes(handles.axes20);
imhist(x1);
title('Hist of Original Image',"Color","Y");

% Display histogram of equalized image
axes(handles.axes21);
imhist(equalized_image);
title('Hist of Equalized Image',"Color","Y");

% --- Executes on button press in rgbeq.
function rgbeq_Callback(hObject, eventdata, handles)
% hObject    handle to rgbeq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread('peppers.png');

% Separate RGB channels
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

% Calculate histograms for each channel
redHist = imhist(redChannel);
greenHist = imhist(greenChannel);
blueHist = imhist(blueChannel);

% Compute cumulative distribution function (CDF) for each channel
redCdf = cumsum(redHist) / numel(redChannel);
greenCdf = cumsum(greenHist) / numel(greenChannel);
blueCdf = cumsum(blueHist) / numel(blueChannel);

% Normalize CDFs to map intensities to [0, 255]
redCdfNormalized = uint8(255 * redCdf);
greenCdfNormalized = uint8(255 * greenCdf);
blueCdfNormalized = uint8(255 * blueCdf);

% Apply histogram equalization
equalizedRed = redCdfNormalized(redChannel + 1);
equalizedGreen = greenCdfNormalized(greenChannel + 1);
equalizedBlue = blueCdfNormalized(blueChannel + 1);

% Combine equalized channels into an RGB image
equalizedRGB = cat(3, equalizedRed, equalizedGreen, equalizedBlue);

% Display original and equalized images

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");
axes(handles.axes19);
imhist(rgbImage);

axes(handles.axes20);
imshow(equalizedRGB);
title('Equalized RGB Image',"Color","Y");
axes(handles.axes21);
imhist(equalizedRGB);

% --- Executes on button press in srg.
function srg_Callback(hObject, eventdata, handles)
% hObject    handle to srg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
temp=R;
R=G;
G=temp;
img(:,:,1)=R;
img(:,:,2)=G;
img(:,:,3)=B;

axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('RGB To GRB',"Color","Y");

% --- Executes on button press in srb.
function srb_Callback(hObject, eventdata, handles)
% hObject    handle to srb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
temp=R;
R=B;
B=temp;
img(:,:,1)=R;
img(:,:,2)=G;
img(:,:,3)=B;

axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('RGB To BGR',"Color","Y");

% --- Executes on button press in sgb.
function sgb_Callback(hObject, eventdata, handles)
% hObject    handle to sgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
temp=G;
G=B;
B=temp;
img(:,:,1)=R;
img(:,:,2)=G;
img(:,:,3)=B;

axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('RGB To RBG',"Color","Y");


% --- Executes on button press in linavgg.
function linavgg_Callback(hObject, eventdata, handles)
% hObject    handle to linavgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=imread('cameraman.tif');

f1=fspecial('average',[5 5]);   
cf1=filter2(f1,img,'same');

f2=fspecial('average',[5 5]);  
cf2=filter2(f2,img,'valid');

f3=fspecial('average',[5 5]);  
cf3=filter2(f3,img,'full');

axes(handles.axes18),imshow(img);
title("Original","Color","Y");
axes(handles.axes19),imshow(cf1/255);
title("Average Filter By same","Color","Y");
axes(handles.axes20),imshow(cf2/255);
title("Average Filter By valid","Color","Y");
axes(handles.axes21),imshow(cf3/255);
title("Average Filter By full","Color","Y");

% --- Executes on button press in lapg.
function lapg_Callback(hObject, eventdata, handles)
% hObject    handle to lapg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread('toysflash.png');

averageFiltered_R = imfilter(rgbImage(:,:,1), fspecial('average', [5 5]));
averageFiltered_G = imfilter(rgbImage(:,:,2), fspecial('average', [5 5]));
averageFiltered_B = imfilter(rgbImage(:,:,3), fspecial('average', [5 5]));

averageFiltered_RGB = cat(3, averageFiltered_R, averageFiltered_G, averageFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(averageFiltered_RGB);
title('Linear Average Filtered Image',"Color","Y");

% --- Executes on button press in laprgb.
function laprgb_Callback(hObject, eventdata, handles)
% hObject    handle to laprgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
grayImage = imread('cameraman.tif');

mask = [0, 0, -1, 0, 0;
        0, -1, -2, -1, 0;
       -1, -2, 16, -2, -1;
        0, -1, -2, -1, 0;
        0, 0, -1, 0, 0];

laplacianFiltered = imfilter(grayImage, mask);

axes(handles.axes18);
imshow(grayImage);
title('Original Grayscale Image',"Color","Y");

axes(handles.axes19);
imshow(laplacianFiltered, []);
title('Linear Laplacian Filtered Image',"Color","Y");

% --- Executes on button press in nonlmg.
function nonlmg_Callback(hObject, eventdata, handles)
% hObject    handle to nonlmg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X = imread('cameraman.tif');
Y = colfilt(X,[5 5],'sliding' ,@max);
axes(handles.axes18),imshow(X),title("Original Image","Color","Y")
axes(handles.axes19), imshow(Y),title("After Max Filter","Color","Y")


% --- Executes on button press in nonmrgb.
function nonmrgb_Callback(hObject, eventdata, handles)
% hObject    handle to nonmrgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

rgbImage = imread("peppers.png");

maxFiltered_R = nlfilter(rgbImage(:,:,1), [5 5], @(x) max(x(:)));
maxFiltered_G = nlfilter(rgbImage(:,:,2), [5 5], @(x) max(x(:)));
maxFiltered_B = nlfilter(rgbImage(:,:,3), [5 5], @(x) max(x(:)));

maxFiltered_RGB = cat(3, maxFiltered_R, maxFiltered_G, maxFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(maxFiltered_RGB);
title('Max Filtered RGB Image',"Color","Y");
% --- Executes on button press in nonlinming.
function nonlinming_Callback(hObject, eventdata, handles)
% hObject    handle to nonlinming (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

X = imread('cameraman.tif');
Y = colfilt(X,[5 5],'sliding' ,@min);
axes(handles.axes18),imshow(X),title("Original Image","Color","Y")
axes(handles.axes19), imshow(Y),title("After Min Filter","Color","Y")

% --- Executes on button press in nonlinminrgb.
function nonlinminrgb_Callback(hObject, eventdata, handles)
% hObject    handle to nonlinminrgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread("peppers.png");

minFiltered_R = nlfilter(rgbImage(:,:,1), [5 5], @(x) min(x(:)));
minFiltered_G = nlfilter(rgbImage(:,:,2), [5 5], @(x) min(x(:)));
minFiltered_B = nlfilter(rgbImage(:,:,3), [5 5], @(x) min(x(:)));

minFiltered_RGB = cat(3, minFiltered_R, minFiltered_G, minFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(minFiltered_RGB);
title('Min Filtered RGB Image',"Color","Y");
% --- Executes on button press in nonlinrag.
function nonlinrag_Callback(hObject, eventdata, handles)
% hObject    handle to nonlinrag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

grayImage = imread('tire.tif');

rankFiltered = ordfilt2(grayImage, 15, ones(5));

axes(handles.axes18);
imshow(grayImage);
title('Original Grayscale Image',"Color","Y");

axes(handles.axes19);
imshow(rankFiltered);
title('Rank Filtered Image',"Color","Y");
% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

rgbImage = imread("peppers.png");

rankFiltered_R = ordfilt2(rgbImage(:,:,1), 20, ones(5));
rankFiltered_G = ordfilt2(rgbImage(:,:,2), 20, ones(5));
rankFiltered_B = ordfilt2(rgbImage(:,:,3), 20, ones(5));

rankFiltered_RGB = cat(3, rankFiltered_R, rankFiltered_G, rankFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(rankFiltered_RGB);
title('Rank Filtered RGB Image',"Color","Y");

% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X = imread('cameraman.tif');
Y = colfilt(X,[5 5],'sliding' ,@median);
axes(handles.axes18),imshow(X),title("Original Image","Color","Y")
axes(handles.axes19),imshow(Y),title("After Median Filter","Color","Y")

% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread("peppers.png");

medianFiltered_R = nlfilter(rgbImage(:,:,1), [5 5], @(x) median(x(:)));
medianFiltered_G = nlfilter(rgbImage(:,:,2), [5 5], @(x) median(x(:)));
medianFiltered_B = nlfilter(rgbImage(:,:,3), [5 5], @(x) median(x(:)));

medianFiltered_RGB = cat(3, medianFiltered_R, medianFiltered_G, medianFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(medianFiltered_RGB);
title('Median Filtered RGB Image',"Color","Y");

% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X = imread('cameraman.tif');
Y = colfilt(X,[5 5],'sliding' ,@mode);
axes(handles.axes18),imshow(X),title("Original Image","Color","Y")
axes(handles.axes19),imshow(Y),title("After Mode Filter","Color","Y")

% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread("peppers.png");

modeFiltered_R = nlfilter(rgbImage(:,:,1), [5 5], @(x) mode(x(:)));
modeFiltered_G = nlfilter(rgbImage(:,:,2), [5 5], @(x) mode(x(:)));
modeFiltered_B = nlfilter(rgbImage(:,:,3), [5 5], @(x) mode(x(:)));

modeFiltered_RGB = cat(3, modeFiltered_R, modeFiltered_G, modeFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(modeFiltered_RGB);
title('Mode Filtered RGB Image',"Color","Y");

% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rgbImage = imread('lighthouse.png');

mask = [0,  0, -1,  0, 0;
        0, -1, -2, -1, 0;
       -1, -2, 16, -2,-1;
        0, -1, -2, -1, 0;
        0,  0,  -1, 0, 0];

laplacianFiltered_R = imfilter(rgbImage(:,:,1), mask);
laplacianFiltered_G = imfilter(rgbImage(:,:,2), mask);
laplacianFiltered_B = imfilter(rgbImage(:,:,3), mask);

laplacianFiltered_RGB = cat(3, laplacianFiltered_R, laplacianFiltered_G, laplacianFiltered_B);

axes(handles.axes18);
imshow(rgbImage);
title('Original RGB Image',"Color","Y");

axes(handles.axes19);
imshow(laplacianFiltered_RGB);
title('Linear Laplacian Filtered RGB Image',"Color","Y");


% --- Executes on button press in pushbutton81.
function pushbutton81_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
theta = mean(image); 
done = 0;
while ~ done 
    g = (image >= theta);
    m1 = mean(image(g));
    m2 = mean(image(~g));
    next_theta = 0.5 * (m1 + m2);   
    done = (abs(theta - next_theta)) < 0.5;   
    theta = next_theta;
end 

x = im2bw(image, theta / 255);
axes(handles.axes18);
imshow(image);
title("Original Image","Color","Y");
axes(handles.axes19);
imshow(x);
title("Segmented Image","Color","Y");

% --- Executes on button press in pushbutton82.
function pushbutton82_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread('cameraman.tif');
bin1 = image>130;

T1 = 75;
T2 = 160;
bin2 = (image>T1) & (image<T2);

axes(handles.axes18),imshow(image),title("Original Image","Color","Y")
axes(handles.axes19),imshow(bin1),title("Single Thershold","Color","Y")
axes(handles.axes20),imshow(bin2),title("Double Thershold","Color","Y");

% --- Executes on button press in pushbutton83.
function pushbutton83_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
Gimage = rgb2gray(image);

p1 = Gimage(:, 1:100);
p2 = Gimage(:, 101:250);
p3 = Gimage(:, 251:350);
p4 = Gimage(:, 351:500);

t1 = im2bw(p1, graythresh(p1));
t2 = im2bw(p2, graythresh(p2));
t3 = im2bw(p3, graythresh(p3));
t4 = im2bw(p4, graythresh(p4));

x = [t1 t2 t3 t4];

% Display Images
axes(handles.axes18);
imshow(image);
title('Original Image',"Color","Y");
axes(handles.axes19);
imshow(Gimage);
title('Gray Image',"Color","Y");
axes(handles.axes20);
imshow(x);
title('Segment Image',"Color","Y");



% Hints: contents = cellstr(get(hObject,'String')) returns zoghly contents as cell array
%        contents{get(hObject,'Value')} returns selected item from zoghly


% --- Executes during object creation, after setting all properties.
function zoghly_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zoghly (see GCBO)   
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sa.
function sa_Callback(hObject, eventdata, handles)
% hObject    handle to sa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sa contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sa

switch get(handles.sa,'value')
case 1
image = imread("peppers.png");
Gimage = rgb2gray(image);

p1 = Gimage(:, 1:100);
p2 = Gimage(:, 101:250);
p3 = Gimage(:, 251:350);
p4 = Gimage(:, 351:500);

t1 = im2bw(p1, graythresh(p1));
t2 = im2bw(p2, graythresh(p2));
t3 = im2bw(p3, graythresh(p3));
t4 = im2bw(p4, graythresh(p4));

x = [t1 t2 t3 t4];

% Display Images
axes(handles.axes18);
imshow(image);
title('Original Image',"Color","Y");
axes(handles.axes19);
imshow(Gimage);
title('Gray Image',"Color","Y");
axes(handles.axes20);
imshow(x);
title('Segment Image',"Color","Y");
case 2
image = imread('cameraman.tif');
bin1 = image>130;

T1 = 75;
T2 = 160;
bin2 = (image>T1) & (image<T2);

axes(handles.axes18),imshow(image),title("Original Image","Color","Y")
axes(handles.axes19),imshow(bin1),title("Single Thershold","Color","Y")
axes(handles.axes20),imshow(bin2),title("Double Thershold","Color","Y");
case 3
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
img=cat(3,R+100,G,B);


axes(handles.axes18);
imshow(image);
title('original',"Color","Y");

axes(handles.axes19);
imshow(img);
title('Reddish Image',"Color","Y");        
otherwise
end

% --- Executes during object creation, after setting all properties.
function sa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in nn_n.
function nn_n_Callback(hObject, eventdata, handles)
% hObject    handle to nn_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ADd.
function ADd_Callback(hObject, eventdata, handles)
% hObject    handle to ADd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

img1 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\9.jpg");
img2 = imread("D:\FACULTY OF AI , YEAR 2\SEMESTER 4 MATERIAL\Digital_Image prossing\project\4.jpg");

addimg = imadd(img1,img2); 
add1 = img1 + 120;
add2 = img2 + 120;

axes(handles.axes18);
imshow(img1);
title('Image 1',"Color","Y");

axes(handles.axes19);
imshow(img2);
title('Image 2',"Color","Y");

axes(handles.axes20);
imshow(addimg); 
title('Addition',"Color","Y");

axes(handles.axes21);
imshow(add1); 
title('Add 120 to Image1',"Color","Y");

axes(handles.axes22);
imshow(add2); 
title('Add 120 to Image2',"Color","Y");


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton118.
function pushbutton118_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton118 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = imread("peppers.png");
R=image(:,:,1);
G=image(:,:,2);
B=image(:,:,3);
temp=R;
R=B;
B=temp;
img(:,:,1)=R;
img(:,:,2)=G;
img(:,:,3)=B;

BGR = cat(3,R,G,B);

res = BGR/3;
image_1=image*5;
result=res+image_1
