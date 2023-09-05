function varargout = task1(varargin)
%TASK1 MATLAB code file for task1.fig
%      TASK1, by itself, creates a new TASK1 or raises the existing
%      singleton*.
%
%      H = TASK1 returns the handle to a new TASK1 or the handle to
%      the existing singleton*.
%
%      TASK1('Property','Value',...) creates a new TASK1 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to task1_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TASK1('CALLBACK') and TASK1('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TASK1.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help task1

% Last Modified by GUIDE v2.5 05-Sep-2023 01:34:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task1_OpeningFcn, ...
                   'gui_OutputFcn',  @task1_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before task1 is made visible.
function task1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for task1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes task1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = task1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in m_but.
function m_but_Callback(hObject, eventdata, handles)
% hObject    handle to m_but (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
M = 10;
g = 10;
l = 1;
mmin = get(handles.str_min_m, 'String');
mmin = str2num(mmin);
mmax = get(handles.str_max_m, 'String');
mmax = str2num(mmax);
vmin = get(handles.str_min_v, 'String');
vmin = str2num(vmin);
vmax = get(handles.str_max_v, 'String');
vmax = str2num(vmax);
x = mmin : 1 : mmax;
x = x/1000;
y = linspace(vmin, vmax, length(x));
[X, Y] = meshgrid(x,y);
Z = acos(1 - (X.^2).*(Y.^2)./(2.*(M+X).^2.*g.*l));
Z = rad2deg(Z);
surf(X,Y,Z);
axis vis3d

function str_min_m_Callback(hObject, eventdata, handles)
% hObject    handle to str_min_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of str_min_m as text
%        str2double(get(hObject,'String')) returns contents of str_min_m as a double


% --- Executes during object creation, after setting all properties.
function str_min_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_min_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function str_max_m_Callback(hObject, eventdata, handles)
% hObject    handle to str_max_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_max_m as text
%        str2double(get(hObject,'String')) returns contents of str_max_m as a double


% --- Executes during object creation, after setting all properties.
function str_max_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_max_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function str_min_v_Callback(hObject, eventdata, handles)
% hObject    handle to str_min_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_min_v as text
%        str2double(get(hObject,'String')) returns contents of str_min_v as a double


% --- Executes during object creation, after setting all properties.
function str_min_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_min_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function str_max_v_Callback(hObject, eventdata, handles)
% hObject    handle to str_max_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_max_v as text
%        str2double(get(hObject,'String')) returns contents of str_max_v as a double


% --- Executes during object creation, after setting all properties.
function str_max_v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_max_v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in roll_x.
function roll_x_Callback(hObject, eventdata, handles)
% hObject    handle to roll_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in roll_y.
function roll_y_Callback(hObject, eventdata, handles)
% hObject    handle to roll_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in roll_z.
function roll_z_Callback(hObject, eventdata, handles)
% hObject    handle to roll_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
