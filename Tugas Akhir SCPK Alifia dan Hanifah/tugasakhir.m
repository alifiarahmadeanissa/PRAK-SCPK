function varargout = tugasakhir(varargin)
% TUGASAKHIR MATLAB code for tugasakhir.fig
%      TUGASAKHIR, by itself, creates a new TUGASAKHIR or raises the existing
%      singleton*.
%
%      H = TUGASAKHIR returns the handle to a new TUGASAKHIR or the handle to
%      the existing singleton*.
%
%      TUGASAKHIR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGASAKHIR.M with the given input arguments.
%
%      TUGASAKHIR('Property','Value',...) creates a new TUGASAKHIR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugasakhir_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugasakhir_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugasakhir

% Last Modified by GUIDE v2.5 02-Jul-2021 10:50:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugasakhir_OpeningFcn, ...
                   'gui_OutputFcn',  @tugasakhir_OutputFcn, ...
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


% --- Executes just before tugasakhir is made visible.
function tugasakhir_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugasakhir (see VARARGIN)

% Choose default command line output for tugasakhir
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugasakhir wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tugasakhir_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when entered data in editable cell(s) in tabelData.
function tabelData_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabelData (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tombolTampil.
function tombolTampil_Callback(hObject, eventdata, handles)
% hObject    handle to tombolTampil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%impor data dari excel
%ds = dataset('XLSFile','tugas akhir.xlsx','Range','A1:F7');
ds = readtable('tugas akhir.xlsx','Range','A1:F7');
ds = table2cell(ds);
set(handles.tabelData,'data',ds);
guidata(hObject, handles);




% --- Executes on button press in tombolRanking.
function tombolRanking_Callback(hObject, eventdata, handles)
% hObject    handle to tombolRanking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%impor data kriteria dari excel
%harga, tools, cloud, ram, sistem pembayaran
data = dataset('XLSFile','tugas akhir.xlsx','Range','B10:F16');
data = double(data);

%nilai atribut; 0=cost, 1=benefit
k = [0,1,1,0,0];

%bobot kriteria
w = [0.30,0.25,0.05,0.15,0.25];

%normalisasi matriks
[m n] = size(data);
R = zeros(m,n); %matriks kosong, untuk hasil normalisasi

for j=1:n
    if k(j)==1
        R(:,j)=data(:,j)./max(data(:,j));
    else
        R(:,j)=min(data(:,j))./data(:,j);
    end
end

%proses pemeringkatan
    %hitung nilai vektor V
    for i=1:m
        V(i)=sum(w.*R(i,:));
    end
    
    %sorting vektor V
    V = V.';
    [Vsorted,I] = sort(V,'descend');
    Vsorted = num2cell(Vsorted);
    
    %sorting software
    SW = readtable('tugas akhir.xlsx','Range','A1:A7');
    SW = table2array(SW);
    SWsorted = SW(I);
    
    rank = [SWsorted Vsorted];
    set(handles.tabelRanking,'data',rank);
    guidata(hObject, handles);
