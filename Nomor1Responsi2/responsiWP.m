function varargout = responsiWP(varargin)
% RESPONSIWP MATLAB code for responsiWP.fig
%      RESPONSIWP, by itself, creates a new RESPONSIWP or raises the existing
%      singleton*.
%
%      H = RESPONSIWP returns the handle to a new RESPONSIWP or the handle to
%      the existing singleton*.
%
%      RESPONSIWP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESPONSIWP.M with the given input arguments.
%
%      RESPONSIWP('Property','Value',...) creates a new RESPONSIWP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before responsiWP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to responsiWP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help responsiWP

% Last Modified by GUIDE v2.5 25-Jun-2021 15:10:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @responsiWP_OpeningFcn, ...
                   'gui_OutputFcn',  @responsiWP_OutputFcn, ...
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


% --- Executes just before responsiWP is made visible.
function responsiWP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to responsiWP (see VARARGIN)

% Choose default command line output for responsiWP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes responsiWP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = responsiWP_OutputFcn(hObject, eventdata, handles) 
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
 x = nomer1;
k = [0,0,1,0,1];%atribut tiap-tiap kriteria, dimana nilai 1=atrribut keuntungan, dan 0= atribut biaya
w=[0,4,3,2,1];
w=w./sum(w); %membagi bobot per kriteria dengan jumlah total seluruh bobot
[m, n]=size (x); %inisialisasi ukuran x
for j=1:n,
if k(j)==0, w(j)=-1*w(j);
end;
for i=1:m,
S(i)=prod(x(i,:).^w);
end;
end;
V = S./sum(S);

set(handles.uitable2,'data',V, column1);

% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
