function varargout = task2(varargin)
% TASK2 MATLAB code for task2.fig
%      TASK2, by itself, creates a new TASK2 or raises the existing
%      singleton*.
%
%      H = TASK2 returns the handle to a new TASK2 or the handle to
%      the existing singleton*.
%
%      TASK2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TASK2.M with the given input arguments.
%
%      TASK2('Property','Value',...) creates a new TASK2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before task2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to task2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help task2

% Last Modified by GUIDE v2.5 05-Sep-2023 02:35:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task2_OpeningFcn, ...
                   'gui_OutputFcn',  @task2_OutputFcn, ...
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


% --- Executes just before task2 is made visible.
function task2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to task2 (see VARARGIN)

% Choose default command line output for task2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes task2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = task2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plot_sin.
function plot_sin_Callback(hObject, eventdata, handles)
% hObject    handle to plot_sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_sin


% --- Executes on button press in plot_cos.
function plot_cos_Callback(hObject, eventdata, handles)
% hObject    handle to plot_cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_cos


% --- Executes on button press in plot_tg.
function plot_tg_Callback(hObject, eventdata, handles)
% hObject    handle to plot_tg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_tg


% --- Executes on button press in plot_cot.
function plot_cot_Callback(hObject, eventdata, handles)
% hObject    handle to plot_cot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_cot


% --- Executes on button press in plot_sec.
function plot_sec_Callback(hObject, eventdata, handles)
% hObject    handle to plot_sec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_sec


% --- Executes on button press in plot_cosec.
function plot_cosec_Callback(hObject, eventdata, handles)
% hObject    handle to plot_cosec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plot_cosec



function x_min_string_Callback(hObject, eventdata, handles)
% hObject    handle to x_min_string (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_min_string as text
%        str2double(get(hObject,'String')) returns contents of x_min_string as a double


% --- Executes during object creation, after setting all properties.
function x_min_string_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_min_string (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_max_string_Callback(hObject, eventdata, handles)
% hObject    handle to x_max_string (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x_max_string as text
%        str2double(get(hObject,'String')) returns contents of x_max_string as a double


% --- Executes during object creation, after setting all properties.
function x_max_string_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x_max_string (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot_ebat.
function plot_ebat_Callback(hObject, eventdata, handles)
% hObject    handle to plot_ebat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xmin = get(handles.x_min_string, 'String'); %считываем минимальное значение х
xmin = str2num(xmin); %переводим его в число
xmax = get(handles.x_max_string, 'String'); %считываем максимальное значение х
xmax = str2num(xmax); %переводим его в число
x = xmin : 0.1 : xmax; %задаем вектор значений по оси Х
function_type = get(handles.functions_type, 'SelectedObject'); %какую функцию выбрали
switch (function_type) %строим график
 case {handles.plot_sin} %соответствующей функции
 plot(x, sin(x)); grid;
 case {handles.plot_cos}
 plot(x, cos(x)); grid;
 case {handles.plot_tg}
 plot(x, tan(x)); grid;
 case {handles.plot_cot}
 plot(x, cot(x)); grid;
 case {handles.plot_sec}
 plot(x, sec(x)); grid;
 case {handles.plot_cosec}
 plot(x, csc(x)); grid;
 xlabel('x')
 ylabel('y')
end
