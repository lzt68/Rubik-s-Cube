function varargout = PaintColor(varargin)
% PAINTCOLOR MATLAB code for PaintColor.fig
%      PAINTCOLOR, by itself, creates a new PAINTCOLOR or raises the existing
%      singleton*.
%
%      H = PAINTCOLOR returns the handle to a new PAINTCOLOR or the handle to
%      the existing singleton*.
%
%      PAINTCOLOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PAINTCOLOR.M with the given input arguments.
%
%      PAINTCOLOR('Property','Value',...) creates a new PAINTCOLOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PaintColor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PaintColor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PaintColor

% Last Modified by GUIDE v2.5 05-May-2018 17:30:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PaintColor_OpeningFcn, ...
                   'gui_OutputFcn',  @PaintColor_OutputFcn, ...
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


% --- Executes just before PaintColor is made visible.
function PaintColor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PaintColor (see VARARGIN)

% Choose default command line output for PaintColor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PaintColor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PaintColor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function frame1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame1.
function frame1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame1,'BackgroundColor',colorchoice);
   global paintorder;
   global diyintegralcube;
   switch paintorder
       case 1
           diyintegralcube(3,1,3).m_color1=colorchoice;
       case 2
           diyintegralcube(1,1,3).m_color2=colorchoice;
       case 3
           diyintegralcube(3,3,3).m_color3=colorchoice;
       case 4
           diyintegralcube(1,1,3).m_color4=colorchoice;
       case 5
           diyintegralcube(1,3,3).m_color5=colorchoice;
       case 6
           diyintegralcube(3,3,1).m_color6=colorchoice;
   end
    global checkpaint;
    checkpaint(paintorder,1)=1;
    if all(all(checkpaint))
        set(handles.pushbutton9,'Enable','on');
    end
    global diycamera;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    DrawCube(diycamera,diyintegralcube,wholecube);
    
    
% --- Executes during object creation, after setting all properties.
function frame2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame2.
function frame2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame2,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,2,3).m_color1=colorchoice;
       case 2
           diyintegralcube(1,2,3).m_color2=colorchoice;
       case 3
           diyintegralcube(2,3,3).m_color3=colorchoice;
       case 4
           diyintegralcube(2,1,3).m_color4=colorchoice;
       case 5
           diyintegralcube(1,2,3).m_color5=colorchoice;
       case 6
           diyintegralcube(2,3,1).m_color6=colorchoice;
   end
   global checkpaint;
    checkpaint(paintorder,2)=1;
    if all(all(checkpaint))
        set(handles.pushbutton9,'Enable','on');
    end
    global diycamera;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    DrawCube(diycamera,diyintegralcube,wholecube);
% --- Executes during object creation, after setting all properties.
function frame3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame3.
function frame3_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame3,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,3,3).m_color1=colorchoice;
       case 2
           diyintegralcube(1,3,3).m_color2=colorchoice;
       case 3
           diyintegralcube(1,3,3).m_color3=colorchoice;
       case 4
           diyintegralcube(3,1,3).m_color4=colorchoice;
       case 5
           diyintegralcube(1,1,3).m_color5=colorchoice;
       case 6
           diyintegralcube(1,3,1).m_color6=colorchoice;
   end
   global checkpaint;
    checkpaint(paintorder,3)=1;
    if all(all(checkpaint))
        set(handles.pushbutton9,'Enable','on');
    end
    global diycamera;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    DrawCube(diycamera,diyintegralcube,wholecube);

% --- Executes during object creation, after setting all properties.
function frame4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame4.
function frame4_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame4,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,1,2).m_color1=colorchoice;
       case 2
           diyintegralcube(2,1,3).m_color2=colorchoice;
       case 3
           diyintegralcube(3,3,2).m_color3=colorchoice;
       case 4
           diyintegralcube(1,1,2).m_color4=colorchoice;
       case 5
           diyintegralcube(1,3,2).m_color5=colorchoice;
       case 6
           diyintegralcube(3,2,1).m_color6=colorchoice;
   end
   global checkpaint;
    checkpaint(paintorder,4)=1;
    if all(all(checkpaint))
        set(handles.pushbutton9,'Enable','on');
    end
    global diycamera;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    DrawCube(diycamera,diyintegralcube,wholecube);

% --- Executes during object creation, after setting all properties.
function frame5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame5.
function frame5_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function frame6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
   

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame6.
function frame6_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame6,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,3,2).m_color1=colorchoice;
       case 2
           diyintegralcube(2,3,3).m_color2=colorchoice;
       case 3
           diyintegralcube(1,3,2).m_color3=colorchoice;
       case 4
           diyintegralcube(3,1,2).m_color4=colorchoice;
       case 5
           diyintegralcube(1,1,2).m_color5=colorchoice;
       case 6
           diyintegralcube(1,2,1).m_color6=colorchoice;
   end
   global checkpaint;
   checkpaint(paintorder,6)=1;
   if all(all(checkpaint))
       set(handles.pushbutton9,'Enable','on');
   end
   global diycamera;
    wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
    DrawCube(diycamera,diyintegralcube,wholecube);

% --- Executes during object creation, after setting all properties.
function frame7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame7.
function frame7_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame7,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,1,1).m_color1=colorchoice;
       case 2
           diyintegralcube(3,1,3).m_color2=colorchoice;
       case 3
           diyintegralcube(3,3,1).m_color3=colorchoice;
       case 4
           diyintegralcube(1,1,1).m_color4=colorchoice;
       case 5
           diyintegralcube(1,3,1).m_color5=colorchoice;
       case 6
           diyintegralcube(3,1,1).m_color6=colorchoice;
   end
   global checkpaint;
   checkpaint(paintorder,7)=1;
   if all(all(checkpaint))
       set(handles.pushbutton9,'Enable','on');
   end
   global diycamera;
   wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
   DrawCube(diycamera,diyintegralcube,wholecube);

% --- Executes during object creation, after setting all properties.
function frame8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame8.
function frame8_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   set(handles.frame8,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,2,1).m_color1=colorchoice;
       case 2
           diyintegralcube(3,2,3).m_color2=colorchoice;
       case 3
           diyintegralcube(2,3,1).m_color3=colorchoice;
       case 4
           diyintegralcube(2,1,1).m_color4=colorchoice;
       case 5
           diyintegralcube(1,2,1).m_color5=colorchoice;
       case 6
           diyintegralcube(2,1,1).m_color6=colorchoice;
   end
   global checkpaint;
   checkpaint(paintorder,8)=1;
   if all(all(checkpaint))
       set(handles.pushbutton9,'Enable','on');
   end
   global diycamera;
   wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
   DrawCube(diycamera,diyintegralcube,wholecube);

% --- Executes during object creation, after setting all properties.
function frame9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frame9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
   

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over frame9.
function frame9_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frame9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global colorchoice;
   set(handles.frame9,'BackgroundColor',colorchoice);
   global diyintegralcube;
   global paintorder;
   switch paintorder
       case 1
           diyintegralcube(3,3,1).m_color1=colorchoice;
       case 2
           diyintegralcube(3,3,3).m_color2=colorchoice;
       case 3
           diyintegralcube(1,3,1).m_color3=colorchoice;
       case 4
           diyintegralcube(3,1,1).m_color4=colorchoice;
       case 5
           diyintegralcube(1,1,1).m_color5=colorchoice;
       case 6
           diyintegralcube(1,1,1).m_color6=colorchoice;
   end
   global checkpaint;
   checkpaint(paintorder,9)=1;
   if all(all(checkpaint))
       set(handles.pushbutton9,'Enable','on');
   end
   global diycamera;
   wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
   DrawCube(diycamera,diyintegralcube,wholecube);

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%当这个按钮能被使用，说明这个面上色已经完成，进入下一个面的上色
   global paintorder;
   global diycamera;
   global diyintegralcube;
   paintorder=paintorder+1;
   if paintorder>=6%说明六个面都完成了
       set(handles.pushbutton1,'Enable','off');
   end
   set(handles.pushbutton10,'Enable','on');
   switch paintorder
       case 1
           set(handles.frame5,'BackgroundColor',[0 0 1]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(3,1,3).m_color1);
           set(handles.frame2,'BackgroundColor',diyintegralcube(3,2,3).m_color1);
           set(handles.frame3,'BackgroundColor',diyintegralcube(3,3,3).m_color1);
           set(handles.frame4,'BackgroundColor',diyintegralcube(3,1,2).m_color1);
           set(handles.frame6,'BackgroundColor',diyintegralcube(3,3,2).m_color1);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,1,1).m_color1);
           set(handles.frame8,'BackgroundColor',diyintegralcube(3,2,1).m_color1);
           set(handles.frame9,'BackgroundColor',diyintegralcube(3,3,1).m_color1);
           diycamera=[9 9 9];
       case 2
           set(handles.frame5,'BackgroundColor',[1 1 0]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(1,1,3).m_color2);
           set(handles.frame2,'BackgroundColor',diyintegralcube(1,2,3).m_color2);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,3,3).m_color2);
           set(handles.frame4,'BackgroundColor',diyintegralcube(2,1,3).m_color2);
           set(handles.frame6,'BackgroundColor',diyintegralcube(2,3,3).m_color2);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,1,3).m_color2);
           set(handles.frame8,'BackgroundColor',diyintegralcube(3,2,3).m_color2);
           set(handles.frame9,'BackgroundColor',diyintegralcube(3,3,3).m_color2);
           diycamera=[9 9 9];
       case 3
           set(handles.frame5,'BackgroundColor',[1 0 0]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(3,3,3).m_color3);
           set(handles.frame2,'BackgroundColor',diyintegralcube(2,3,3).m_color3);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,3,3).m_color3);
           set(handles.frame4,'BackgroundColor',diyintegralcube(3,3,2).m_color3);
           set(handles.frame6,'BackgroundColor',diyintegralcube(1,3,2).m_color3);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,3,1).m_color3);
           set(handles.frame8,'BackgroundColor',diyintegralcube(2,3,1).m_color3);
           set(handles.frame9,'BackgroundColor',diyintegralcube(1,3,1).m_color3);
           diycamera=[9 9 9];
       case 4
           set(handles.frame5,'BackgroundColor',[1 0.50196 0]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(1,1,3).m_color4);
           set(handles.frame2,'BackgroundColor',diyintegralcube(2,1,3).m_color4);
           set(handles.frame3,'BackgroundColor',diyintegralcube(3,1,3).m_color4);
           set(handles.frame4,'BackgroundColor',diyintegralcube(1,1,2).m_color4);
           set(handles.frame6,'BackgroundColor',diyintegralcube(3,1,2).m_color4);
           set(handles.frame7,'BackgroundColor',diyintegralcube(1,1,1).m_color4);
           set(handles.frame8,'BackgroundColor',diyintegralcube(2,1,1).m_color4);
           set(handles.frame9,'BackgroundColor',diyintegralcube(3,1,1).m_color4);
           diycamera=[9 -9 9];
       case 5
           set(handles.frame5,'BackgroundColor',[0 0.8 0.4]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(1,3,3).m_color5);
           set(handles.frame2,'BackgroundColor',diyintegralcube(1,2,3).m_color5);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,1,3).m_color5);
           set(handles.frame4,'BackgroundColor',diyintegralcube(1,3,2).m_color5);
           set(handles.frame6,'BackgroundColor',diyintegralcube(1,1,2).m_color5);
           set(handles.frame7,'BackgroundColor',diyintegralcube(1,3,1).m_color5);
           set(handles.frame8,'BackgroundColor',diyintegralcube(1,2,1).m_color5);
           set(handles.frame9,'BackgroundColor',diyintegralcube(1,1,1).m_color5);
           diycamera=[-9 9 9];
       case 6
           set(handles.frame5,'BackgroundColor',[1 1 1]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(3,3,1).m_color6);
           set(handles.frame2,'BackgroundColor',diyintegralcube(2,3,1).m_color6);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,3,1).m_color6);
           set(handles.frame4,'BackgroundColor',diyintegralcube(3,2,1).m_color6);
           set(handles.frame6,'BackgroundColor',diyintegralcube(1,2,1).m_color6);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,1,1).m_color6);
           set(handles.frame8,'BackgroundColor',diyintegralcube(2,1,1).m_color6);
           set(handles.frame9,'BackgroundColor',diyintegralcube(1,1,1).m_color6);
           diycamera=[9 9 -9];
   end
   wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
   cla;
   DrawCube(diycamera,diyintegralcube,wholecube);
         

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   colorchoice=[0 0 1];
   set(handles.frame_color,'BackgroundColor',colorchoice);
   

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   colorchoice=[1 1 0];
   set(handles.frame_color,'BackgroundColor',colorchoice);
   

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   colorchoice=[1 0 0];
   set(handles.frame_color,'BackgroundColor',colorchoice);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   colorchoice=[1 0.50196 0];
   set(handles.frame_color,'BackgroundColor',colorchoice);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   colorchoice=[0 0.8 0.4];
   set(handles.frame_color,'BackgroundColor',colorchoice);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global colorchoice;
   colorchoice=[1 1 1];
   set(handles.frame_color,'BackgroundColor',colorchoice);

% --- Executes on button press in frame_color.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to frame_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
     global diyintegralcube;%用来存放用户输入的魔方样式
     global colorchoice;%当前选了什么颜色
     global paintorder;%目前进行到第几个面了 蓝1 黄2 红3 橙4 绿5 白6
     global checkpaint;%用来标识目前这个面的上色情况
     global diycamera;%储存这个模式下视角的位置
     diycamera=[9 9 9];
     checkpaint=zeros(6,9);
     checkpaint(1:6,5)=1;
     paintorder=1;
     colorchoice=[0 0 1];
     diyintegralcube=InitGrey();
     wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
     DrawCube([9 9 9],diyintegralcube,wholecube);
    
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global sol;
    global diyintegralcube;
    global Y;
    Y=cell(1,6);
    Y{1,1}=zeros(3,3);
    for i=1:3
        for j=1:3
           Y{1,1}(i,j)=SwitchColor(diyintegralcube(i,j,3).m_color2); 
        end
    end
    %Y的第一个元素完成赋值
    Y{1,2}=zeros(3,3);
    for i=3:-1:1
        for j=1:3
           Y{1,2}(-i+4,j)=SwitchColor(diyintegralcube(i,j,1).m_color6); 
        end
    end
    %Y的第二个元素完成赋值
    Y{1,3}=zeros(3,3);
    for i=3:-1:1
        for j=1:3
           Y{1,3}(-i+4,j)=SwitchColor(diyintegralcube(3,j,i).m_color1); 
        end
    end
    %Y的第三个元素完成赋值
    Y{1,4}=zeros(3,3);
    for i=3:-1:1
        for j=3:-1:1
           Y{1,4}(-j+4,-i+4)=SwitchColor(diyintegralcube(i,3,j).m_color3); 
        end
    end
    %Y的第四个元素完成赋值
    Y{1,5}=zeros(3,3);
    for i=3:-1:1
        for j=3:-1:1
           Y{1,5}(-j+4,-i+4)=SwitchColor(diyintegralcube(1,i,j).m_color5); 
        end
    end
    %Y的第五个元素完成赋值
    Y{1,6}=zeros(3,3);
    for i=1:3
        for j=3:-1:1
           Y{1,6}(-j+4,i)=SwitchColor(diyintegralcube(i,1,j).m_color4); 
        end
    end
    disp('上色完成');
    save MagicBox.mat Y;
    [sol,checkresult]=solution();
    if length(sol)>=1000
    %说明魔方有可能输入出错了
       %PaintColor); 
       %ParentWindow;
       msgbox('输入有误，请重新输入');
       return;
        
    end
    if isempty(sol)
        if checkresult==0
            msgbox('输入有误，请重新输入');
            return;
        end
    end
    disp(sol);
    close(PaintColor);
    DisplaySolution;
    %Y的第6个元素完成赋值
    
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   global paintorder;
   global diycamera;
   global diyintegralcube;
   paintorder=paintorder-1;
   if paintorder<=1%说明六个面都完成了
       set(handles.pushbutton10,'Enable','off');
   end
   set(handles.pushbutton1,'Enable','on');
   switch paintorder
       case 1
           set(handles.frame5,'BackgroundColor',[0 0 1]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(3,1,3).m_color1);
           set(handles.frame2,'BackgroundColor',diyintegralcube(3,2,3).m_color1);
           set(handles.frame3,'BackgroundColor',diyintegralcube(3,3,3).m_color1);
           set(handles.frame4,'BackgroundColor',diyintegralcube(3,1,2).m_color1);
           set(handles.frame6,'BackgroundColor',diyintegralcube(3,3,2).m_color1);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,1,1).m_color1);
           set(handles.frame8,'BackgroundColor',diyintegralcube(3,2,1).m_color1);
           set(handles.frame9,'BackgroundColor',diyintegralcube(3,3,1).m_color1);
           diycamera=[9 9 9];
       case 2
           set(handles.frame5,'BackgroundColor',[1 1 0]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(1,1,3).m_color2);
           set(handles.frame2,'BackgroundColor',diyintegralcube(1,2,3).m_color2);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,3,3).m_color2);
           set(handles.frame4,'BackgroundColor',diyintegralcube(2,1,3).m_color2);
           set(handles.frame6,'BackgroundColor',diyintegralcube(2,3,3).m_color2);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,1,3).m_color2);
           set(handles.frame8,'BackgroundColor',diyintegralcube(3,2,3).m_color2);
           set(handles.frame9,'BackgroundColor',diyintegralcube(3,3,3).m_color2);
           diycamera=[9 9 9];
       case 3
           set(handles.frame5,'BackgroundColor',[1 0 0]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(3,3,3).m_color3);
           set(handles.frame2,'BackgroundColor',diyintegralcube(2,3,3).m_color3);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,3,3).m_color3);
           set(handles.frame4,'BackgroundColor',diyintegralcube(3,3,2).m_color3);
           set(handles.frame6,'BackgroundColor',diyintegralcube(1,3,2).m_color3);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,3,1).m_color3);
           set(handles.frame8,'BackgroundColor',diyintegralcube(2,3,1).m_color3);
           set(handles.frame9,'BackgroundColor',diyintegralcube(1,3,1).m_color3);
           diycamera=[9 9 9];
       case 4
           set(handles.frame5,'BackgroundColor',[1 0.50196 0]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(1,1,3).m_color4);
           set(handles.frame2,'BackgroundColor',diyintegralcube(2,1,3).m_color4);
           set(handles.frame3,'BackgroundColor',diyintegralcube(3,1,3).m_color4);
           set(handles.frame4,'BackgroundColor',diyintegralcube(1,1,2).m_color4);
           set(handles.frame6,'BackgroundColor',diyintegralcube(3,1,2).m_color4);
           set(handles.frame7,'BackgroundColor',diyintegralcube(1,1,1).m_color4);
           set(handles.frame8,'BackgroundColor',diyintegralcube(2,1,1).m_color4);
           set(handles.frame9,'BackgroundColor',diyintegralcube(3,1,1).m_color4);
           diycamera=[9 -9 9];
       case 5
           set(handles.frame5,'BackgroundColor',[0 0.8 0.4]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(1,3,3).m_color5);
           set(handles.frame2,'BackgroundColor',diyintegralcube(1,2,3).m_color5);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,1,3).m_color5);
           set(handles.frame4,'BackgroundColor',diyintegralcube(1,3,2).m_color5);
           set(handles.frame6,'BackgroundColor',diyintegralcube(1,1,2).m_color5);
           set(handles.frame7,'BackgroundColor',diyintegralcube(1,3,1).m_color5);
           set(handles.frame8,'BackgroundColor',diyintegralcube(1,2,1).m_color5);
           set(handles.frame9,'BackgroundColor',diyintegralcube(1,1,1).m_color5);
           diycamera=[-9 9 9];
       case 6
           set(handles.frame5,'BackgroundColor',[1 1 1]);
           set(handles.frame1,'BackgroundColor',diyintegralcube(3,3,1).m_color6);
           set(handles.frame2,'BackgroundColor',diyintegralcube(2,3,1).m_color6);
           set(handles.frame3,'BackgroundColor',diyintegralcube(1,3,1).m_color6);
           set(handles.frame4,'BackgroundColor',diyintegralcube(3,2,1).m_color6);
           set(handles.frame6,'BackgroundColor',diyintegralcube(1,2,1).m_color6);
           set(handles.frame7,'BackgroundColor',diyintegralcube(3,1,1).m_color6);
           set(handles.frame8,'BackgroundColor',diyintegralcube(2,1,1).m_color6);
           set(handles.frame9,'BackgroundColor',diyintegralcube(1,1,1).m_color6);
           diycamera=[9 9 -9];
   end
   wholecube=CubeWithoutColor(Point(3,-3,3),Point(3,3,3),Point(-3,3,3),Point(-3,-3,3),Point(3,-3,-3),Point(3,3,-3),Point(-3,3,-3),Point(-3,-3,-3));
   cla;
   DrawCube(diycamera,diyintegralcube,wholecube);
