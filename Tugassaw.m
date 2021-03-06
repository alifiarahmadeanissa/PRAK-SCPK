function varargout = Tugassaw(varargin)
% TUGASSAW MATLAB code for Tugassaw.fig
%      TUGASSAW, by itself, creates a new TUGASSAW or raises the existing
%      singleton*.
%
%      H = TUGASSAW returns the handle to a new TUGASSAW or the handle to
%      the existing singleton*.
%
%      TUGASSAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGASSAW.M with the given input arguments.
%
%      TUGASSAW('Property','Value',...) creates a new TUGASSAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tugassaw_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tugassaw_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tugassaw

% Last Modified by GUIDE v2.5 22-Jun-2021 17:32:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tugassaw_OpeningFcn, ...
                   'gui_OutputFcn',  @Tugassaw_OutputFcn, ...
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


% --- Executes just before Tugassaw is made visible.
function Tugassaw_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tugassaw (see VARARGIN)

% Choose default command line output for Tugassaw
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tugassaw wait for user response (see UIRESUME)
% uiwait(handles.tabel);


% --- Outputs from this function are returned to the command line.
function varargout = Tugassaw_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
% handles    structure with handles and user data (see GUIDATA)
