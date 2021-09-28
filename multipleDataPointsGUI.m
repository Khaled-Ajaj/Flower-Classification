function varargout = SingleDataPointGUI(varargin)
% MULTIPLEDATAPOINTSGUI MATLAB code for multipleDataPointsGUI.fig
%      MULTIPLEDATAPOINTSGUI, by itself, creates a new MULTIPLEDATAPOINTSGUI or raises the existing
%      singleton*.
%
%      H = MULTIPLEDATAPOINTSGUI returns the handle to a new MULTIPLEDATAPOINTSGUI or the handle to
%      the existing singleton*.
%
%      MULTIPLEDATAPOINTSGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIPLEDATAPOINTSGUI.M with the given input arguments.
%
%      MULTIPLEDATAPOINTSGUI('Property','Value',...) creates a new MULTIPLEDATAPOINTSGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multipleDataPointsGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multipleDataPointsGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multipleDataPointsGUI

% Last Modified by GUIDE v2.5 30-Apr-2020 01:34:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multipleDataPointsGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @multipleDataPointsGUI_OutputFcn, ...
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


% --- Executes just before multipleDataPointsGUI is made visible.
function multipleDataPointsGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multipleDataPointsGUI (see VARARGIN)

% Choose default command line output for multipleDataPointsGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multipleDataPointsGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multipleDataPointsGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputName_Callback(hObject, eventdata, handles)
% hObject    handle to inputName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputName as text
%        str2double(get(hObject,'String')) returns contents of inputName as a double
inputFileName = get(hObject,'String'); % reads the input file name from the text box
setappdata(0,'inputFile',inputFileName); % saves it to use in other functions


% --- Executes during object creation, after setting all properties.
function inputName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outputName_Callback(hObject, eventdata, handles)
% hObject    handle to outputName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outputName as text
%        str2double(get(hObject,'String')) returns contents of outputName as a double
outputFileName = get(hObject,'String'); % retrieves the output file name from the text box
setappdata(0,'outputFile',outputFileName);% saves to use in other functions


% --- Executes during object creation, after setting all properties.
function outputName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outputName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in runAlgorithm.
function runAlgorithm_Callback(hObject, eventdata, handles)
% hObject    handle to runAlgorithm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = getappdata(0,'inputFile'); % retreives the input file name
output = getappdata(0,'outputFile'); % retreives the output file name
if isempty(input) == true || isempty(output) == true % if either text box is empty
    errordlg('Please enter input and output file names'); % display error
    return % break function
end
% if input and output file names are filled in
DataInputOutput(input,output);  % calls the DataInputOutput function 
setappdata(0,'inputFile',''); % resets the textbox input file name for next entry
setappdata(0,'outputFile',''); % resets the textbox output file name for next entry


