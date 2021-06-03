function varargout = SNS2K19EC149_181(varargin)
% SNS2K19EC149_181 MATLAB code for SNS2K19EC149_181.fig
%      SNS2K19EC149_181, by itself, creates a new SNS2K19EC149_181 or raises the existing
%      singleton*.
%
%      H = SNS2K19EC149_181 returns the handle to a new SNS2K19EC149_181 or the handle to
%      the existing singleton*.
%
%      SNS2K19EC149_181('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SNS2K19EC149_181.M with the given input arguments.
%
%      SNS2K19EC149_181('Property','Value',...) creates a new SNS2K19EC149_181 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SNS2K19EC149_181_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SNS2K19EC149_181_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SNS2K19EC149_181

% Last Modified by GUIDE v2.5 26-Nov-2020 01:24:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SNS2K19EC149_181_OpeningFcn, ...
                   'gui_OutputFcn',  @SNS2K19EC149_181_OutputFcn, ...
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


% --- Executes just before SNS2K19EC149_181 is made visible.
function SNS2K19EC149_181_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SNS2K19EC149_181 (see VARARGIN)

% Choose default command line output for SNS2K19EC149_181
handles.output = hObject;
axes(handles.logo)
imshow('logo.png')

%%% record starting positions and limit the seens area
pos = get(handles.figure1,'position');
set(handles.figure1,'position',[pos(3:4) 125 30])

handles.panelPos = [get(handles.uipanel1,'position');...
    get(handles.uipanel2,'position')];
handles.currentPanel = 1;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SNS2K19EC149_181 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SNS2K19EC149_181_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
swapPanPos(hObject, eventdata, handles,1)

% --- Executes on button press in pushbutton4.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 axes(handles.select_img);
 plot(rand(4,10));

% --- Executes on button press in pushbutton5.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
swapPanPos(hObject, eventdata, handles,2)

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%%
function swapPanPos(hObject, eventdata, handles,POI)

temp= handles.panelPos(POI,:);  %make a temp position location
handles.panelPos(POI,:)=handles.panelPos(handles.currentPanel,:); %perform position swap
handles.panelPos(handles.currentPanel,:)=temp; 
     
%update panel positions
set(handles.uipanel1,'position',handles.panelPos(1,:))
set(handles.uipanel2,'position',handles.panelPos(2,:))




% --- Executes on button press in sel_img.
function sel_img_Callback(hObject, eventdata, handles)
% hObject    handle to sel_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im Str
    [filename, pathname]=uigetfile('*.jpg', 'Select an Image');
    
    Path=strcat(pathname,filename);
    im= imread(Path);
    axes(handles.select_img);
    imshow(im);
    [filename1, pathname1]=uigetfile('*.txt', 'Select a text file');
    Path1=strcat(pathname1,filename1);
    FID = fopen(Path1, 'rb');     Str=fread(FID,[1, inf], 'char'); 
    fclose(FID);
    

% --- Executes on button press in grayscale.
function grayscale_Callback(hObject, eventdata, handles)
% hObject    handle to grayscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im g c a G
G=rgb2gray(im);

axes(handles.gscale);
imshow(G);
g=uint16(G); %conversion to 16 bit






% --- Executes on button press in ecypt.
function ecypt_Callback(hObject, eventdata, handles)
% hObject    handle to ecypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im g c a G Str
[g_row,g_col]=size(g);
% FID = fopen('Myfile.txt', 'rb');    %opening text file
% Str = fread(FID, [1, inf], 'char'); %reading text file
% fclose(FID);        %closing the file
Str=uint16(Str);    %converting to 16 bit numbers for proper calculation

c=numel(Str);   %counting characters
a=1;
    

%encrypting loop
for i=1:g_row
    for j=1:g_col
        if(a<=c)
            
            if(g(i,j)+Str(a)>255)
                temp=g(i,j)+Str(a)-256;
            else
                temp=g(i,j)+Str(a);
            end
            output(i,j)=uint8(temp);
        else
            output(i,j)=uint8(g(i,j));
        end
        a=a+1;
    end
end
imwrite(G, 'originalImage.png'); 

imwrite(output,'stegoImage.png');     %writing the encrypted data as pixels in image
axes(handles.ecyptax);
imshow(output);


% --- Executes on button press in encypt_img.
function encypt_img_Callback(hObject, eventdata, handles)
% hObject    handle to encypt_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global eimg
    [filename, pathname]=uigetfile('*.png', 'Select Encrypted Image');
    
    Path=strcat(pathname,filename);
    eimg= imread(Path);
    axes(handles.encyptimg);
    imshow(eimg);

% --- Executes on button press in org_img.
function org_img_Callback(hObject, eventdata, handles)
% hObject    handle to org_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img
    [filename, pathname]=uigetfile('*.png', 'Select Original Image');
    
    Path=strcat(pathname,filename);
    img= imread(Path);
    axes(handles.orgimg);
    imshow(img);

% --- Executes on button press in decrypt.
function decrypt_Callback(hObject, eventdata, handles)
% hObject    handle to decrypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global img eimg
eimg=uint16(eimg);    %16 bit conversion
img=uint16(img);    %16 bit conversion

[x_row, x_col]=size(eimg);

b=0;k=1;
%decrypting loop
for i=1:x_row
    for j=1:x_col
        if(eimg(i,j)>=img(i,j))
            a=eimg(i,j)-img(i,j);
        else
            a=256+eimg(i,j)-img(i,j);
        end
        
        if(a~=0)
            Z(k)=uint8(a);
            k=k+1;
        else
            b=1;
            break;
        end
    end
    if(b==1)
        break;
    end
end

fid=fopen('decrypted.txt','w+'); %creating text file to write decrypted data 
for i=1:k-1
    fprintf(fid,'%c',Z(i)); %writing to file
end
fclose(fid);
FID = fopen('decrypted.txt', 'rb');    %opening text file
str = fread(FID, [1, inf], 'char'); %reading text file
fclose(FID);
y=char(str)
set(handles.edit1,'string',y);



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function select_img_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate select_img


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
