function varargout = task3(varargin)
% TASK3 MATLAB code for task3.fig
%      TASK3, by itself, creates a new TASK3 or raises the existing
%      singleton*.
%
%      H = TASK3 returns the handle to a new TASK3 or the handle to
%      the existing singleton*.
%
%      TASK3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TASK3.M with the given input arguments.
%
%      TASK3('Property','Value',...) creates a new TASK3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before task3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to task3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help task3

% Last Modified by GUIDE v2.5 05-Sep-2023 03:24:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task3_OpeningFcn, ...
                   'gui_OutputFcn',  @task3_OutputFcn, ...
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


% --- Executes just before task3 is made visible.
function task3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to task3 (see VARARGIN)

% Choose default command line output for task3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes task3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = task3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function str_d_Callback(hObject, eventdata, handles)
% hObject    handle to str_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_d as text
%        str2double(get(hObject,'String')) returns contents of str_d as a double


% --- Executes during object creation, after setting all properties.
function str_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function str_l_Callback(hObject, eventdata, handles)
% hObject    handle to str_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_l as text
%        str2double(get(hObject,'String')) returns contents of str_l as a double


% --- Executes during object creation, after setting all properties.
function str_l_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function str_w_Callback(hObject, eventdata, handles)
% hObject    handle to str_w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_w as text
%        str2double(get(hObject,'String')) returns contents of str_w as a double


% --- Executes during object creation, after setting all properties.
function str_w_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_w (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calc.
function calc_Callback(hObject, eventdata, handles)
% hObject    handle to calc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
D = get(handles.str_d, 'String'); %считываем минимальное значение х
D = str2num(D); %переводим его в число
L = get(handles.str_l, 'String'); %считываем минимальное значение х
L = str2num(L); %переводим его в число
W = get(handles.str_w, 'String'); %считываем минимальное значение х
W = str2num(W); %переводим его в число

metal_type = get(handles.metall_type, 'SelectedObject'); %какую функцию выбрали
switch (metal_type) %строим график
 case {handles.metall_steel} 
     h = (1400 - 20)* 468 + 84000 + 6120000;
     t = L/1000 * h/1000 * 7800 / W;
     set(handles.str_time, 'String', t)
 case {handles.metall_al}
     h = (667 - 20) * 897 + 390000 + 10900000;
     t = L/1000 * h/1000 * 2651 / W;
     set(handles.str_time, 'String', t)
 case {handles.metall_cuprum}
     h = (1083 - 20) * 385 + 213000 + 4820000;
     t = L/1000 * h/1000 * 8900 / W;
     set(handles.str_time, 'String', t)
end
function str_time_Callback(hObject, eventdata, handles)
% hObject    handle to str_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str_time as text
%        str2double(get(hObject,'String')) returns contents of str_time as a double


% --- Executes during object creation, after setting all properties.
function str_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
