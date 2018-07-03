function varargout = DisplaySolution(varargin)
% DISPLAYSOLUTION MATLAB code for DisplaySolution.fig
%      DISPLAYSOLUTION, by itself, creates a new DISPLAYSOLUTION or raises the existing
%      singleton*.
%
%      H = DISPLAYSOLUTION returns the handle to a new DISPLAYSOLUTION or the handle to
%      the existing singleton*.
%
%      DISPLAYSOLUTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISPLAYSOLUTION.M with the given input arguments.
%
%      DISPLAYSOLUTION('Property','Value',...) creates a new DISPLAYSOLUTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DisplaySolution_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DisplaySolution_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DisplaySolution

% Last Modified by GUIDE v2.5 12-May-2018 19:57:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DisplaySolution_OpeningFcn, ...
                   'gui_OutputFcn',  @DisplaySolution_OutputFcn, ...
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

% --- Executes just before DisplaySolution is made visible.
function DisplaySolution_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DisplaySolution (see VARARGIN)

% Choose default command line output for DisplaySolution
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DisplaySolution wait for user response (see UIRESUME)
% uiwait(handles.figure1);
    global stepnumber;    
    stepstring=num2str(stepnumber);
    set(handles.textstep,'String',stepstring);

% --- Outputs from this function are returned to the command line.
function varargout = DisplaySolution_OutputFcn(hObject, eventdata, handles) 
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
    global sol;
    [thisstep,sol]=ReadSolution(sol);
    global stepnumber;
    if stepnumber>=1
        stepnumber=stepnumber-1;
        steptext=num2str(stepnumber);
        set(handles.textstep,'String',steptext);
    end
    if isempty(thisstep)
        return;
    end
    if thisstep=='F'
        Animation_F();
    end
    if thisstep=='F1'
        Animation_Fo();
    end
    if thisstep=='B'
        Animation_B();
    end
    if thisstep=='B1'
        Animation_Bo();
    end
    if thisstep=='D'
        Animation_D();
    end
    if thisstep=='D1'
        Animation_Do();
    end
    if thisstep=='L'
        Animation_L();
    end
    if thisstep=='L1'
        Animation_Lo();
    end
    if thisstep=='R'
        Animation_R();
    end
    if thisstep=='R1'
        Animation_Ro();
    end
    if thisstep=='U'
        Animation_U();
    end
    if thisstep=='U1'
        Animation_Uo();
    end
    
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
    global diyintegralcube;
    global integralcube;
    global wholecube;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    integralcube=diyintegralcube;
    global stablecube;
    global stablecubenumber;
    for i=1:21
        stablecube{i}=zeros(3,4);
    end
    stablecubenumber=0;
    global sol;
    [~,stringlengths]=size(sol);
    global stepnumber;
    stepnumber=0;
    for i=1:1:stringlengths
        if sol(1,i)==','
            stepnumber=stepnumber+1;
        end
    end
    DrawCube(camera,integralcube,wholecube);
    


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
function textstep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textstep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    %这个函数没有用，但由于消息映射已经被建立了，所以不删除
    
% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    %这个函数没有用，但由于消息映射已经被建立了，所以不删除