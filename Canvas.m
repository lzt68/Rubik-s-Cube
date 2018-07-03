function varargout = Canvas(varargin)
% CANVAS MATLAB code for Canvas.fig
%      CANVAS, by itself, creates a new CANVAS or raises the existing
%      singleton*.
%
%      H = CANVAS returns the handle to a new CANVAS or the handle to
%      the existing singleton*.
%
%      CANVAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CANVAS.M with the given input arguments.
%
%      CANVAS('Property','Value',...) creates a new CANVAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Canvas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Canvas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Canvas

% Last Modified by GUIDE v2.5 04-May-2018 15:43:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Canvas_OpeningFcn, ...
                   'gui_OutputFcn',  @Canvas_OutputFcn, ...
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


% --- Executes just before Canvas is made visible.
function Canvas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Canvas (see VARARGIN)

% Choose default command line output for Canvas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
    
% UIWAIT makes Canvas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Canvas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
    global camera;
    global r;
    camera=AdjustCamera(camera,eventdata.Character,r);
    clf;
    global integralcube;
    global wholecube;
    DrawCube(camera,integralcube,wholecube);
    
% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    global canvashandle;
    canvashandle=hObject;
    global camera;
    global r;%镜头所在球面的半径
    r=18;
    camera=[r 0 0];%初始化镜头位置，定为（r，0，0）
    global on_off%标识旋转按钮是否被按下,以防止作死的用户连续点击按钮
    on_off=false;
    global integralcube;
    global wholecube;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    integralcube=InitCube();
    global stablecube;
    global stablecubenumber;
    for i=1:21
        stablecube{i}=zeros(3,4);
    end
    stablecubenumber=0;
    DrawCube(camera,integralcube,wholecube);
  
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)%f
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_F();
        case 2
           Animation_R();
        case 3
            Animation_B();
        case 4
            Animation_L();
    end
    
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_R();
        case 2
           Animation_B();
        case 3
            Animation_L();
        case 4
            Animation_F();
    end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Animation_U();
    
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_Fo();
        case 2
           Animation_Ro();
        case 3
            Animation_Bo();
        case 4
            Animation_Lo();
    end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_Ro();
        case 2
           Animation_Bo();
        case 3
            Animation_Lo();
        case 4
            Animation_Fo();
    end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Animation_Uo();


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_B();
        case 2
           Animation_L();
        case 3
            Animation_F();
        case 4
            Animation_R();
    end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_L();
        case 2
           Animation_F();
        case 3
            Animation_R();
        case 4
            Animation_B();
    end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Animation_D();
    
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_Bo();
        case 2
           Animation_Lo();
        case 3
           Animation_Fo();
        case 4
            Animation_Ro();
    end

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    item=get(handles.popupmenu1,'value');
    switch item
        case 1
           Animation_Lo();
        case 2
           Animation_Fo();
        case 3
            Animation_Ro();
        case 4
            Animation_Bo();
    end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Animation_Do();


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
