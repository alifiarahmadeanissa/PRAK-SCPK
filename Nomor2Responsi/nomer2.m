function varargout = nomer2(varargin)
% NOMER2 MATLAB code for nomer2.fig
%      NOMER2, by itself, creates a new NOMER2 or raises the existing
%      singleton*.
%
%      H = NOMER2 returns the handle to a new NOMER2 or the handle to
%      the existing singleton*.
%
%      NOMER2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NOMER2.M with the given input arguments.
%
%      NOMER2('Property','Value',...) creates a new NOMER2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nomer2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nomer2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nomer2

% Last Modified by GUIDE v2.5 26-Jun-2021 07:56:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @nomer2_OpeningFcn, ...
                   'gui_OutputFcn',  @nomer2_OutputFcn, ...
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


% --- Executes just before nomer2 is made visible.
function nomer2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nomer2 (see VARARGIN)

% Choose default command line output for nomer2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nomer2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nomer2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
