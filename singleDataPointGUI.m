function varargout = singleDataPointGUI(varargin)
% SINGLEDATAPOINTGUI MATLAB code for singleDataPointGUI.fig
%      SINGLEDATAPOINTGUI, by itself, creates a new SINGLEDATAPOINTGUI or raises the existing
%      singleton*.
%
%      H = SINGLEDATAPOINTGUI returns the handle to a new SINGLEDATAPOINTGUI or the handle to
%      the existing singleton*.
%
%      SINGLEDATAPOINTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SINGLEDATAPOINTGUI.M with the given input arguments.
%
%      SINGLEDATAPOINTGUI('Property','Value',...) creates a new SINGLEDATAPOINTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before singleDataPointGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to singleDataPointGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help singleDataPointGUI

% Last Modified by GUIDE v2.5 30-Apr-2020 03:40:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @singleDataPointGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @singleDataPointGUI_OutputFcn, ...
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


% --- Executes just before singleDataPointGUI is made visible.
function singleDataPointGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to singleDataPointGUI (see VARARGIN)

% Choose default command line output for singleDataPointGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes singleDataPointGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = singleDataPointGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function meas1_Callback(hObject, eventdata, handles)
% hObject    handle to meas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas1 as text
%        str2double(get(hObject,'String')) returns contents of meas1 as a double
msrmnt1 = str2double(get(hObject,'String')); % retrieves the first measurement from the text box
setappdata(0,'measurement1',msrmnt1); % saves the measurement


% --- Executes during object creation, after setting all properties.
function meas1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meas2_Callback(hObject, eventdata, handles)
% hObject    handle to meas2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas2 as text
%        str2double(get(hObject,'String')) returns contents of meas2 as a double
msrmnt2 = str2double(get(hObject,'String')); % retrieves the second measurement from the text box
setappdata(0,'measurement2',msrmnt2); % saves the measurement


% --- Executes during object creation, after setting all properties.
function meas2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meas3_Callback(hObject, eventdata, handles)
% hObject    handle to meas3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas3 as text
%        str2double(get(hObject,'String')) returns contents of meas3 as a double
msrmnt3 = str2double(get(hObject,'String'));  % retrieves the 3rd measurement from the text box
setappdata(0,'measurement3',msrmnt3); % saves measurement


% --- Executes during object creation, after setting all properties.
function meas3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meas4_Callback(hObject, eventdata, handles)
% hObject    handle to meas4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas4 as text
%        str2double(get(hObject,'String')) returns contents of meas4 as a double
msrmnt4 = str2double(get(hObject,'String')); % retrieves the first measurement from the text box
setappdata(0,'measurement4',msrmnt4); % saves measurement


% --- Executes during object creation, after setting all properties.
function meas4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outputFilename_Callback(hObject, eventdata, handles)
% hObject    handle to outputFilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outputFilename as text
%        str2double(get(hObject,'String')) returns contents of outputFilename as a double
output = get(hObject,'String'); % retrieves the output file name from the text box
if isempty(output) == false % if theres a file name
    setappdata(0,'outputFileName', output); % saves the file name
elseif isempty(output) == true % if theres no file name
    setappdata(0,'outputFileName',''); % saves the file name as empty character array
end


% --- Executes during object creation, after setting all properties.
function outputFilename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outputFilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in runButton.
function runButton_Callback(hObject, eventdata, handles)
% hObject    handle to runButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load fisheriris % loads data set
set(handles.resultText,'String','','FontSize',15); % empties the result text box
meas1 = getappdata(0,'measurement1'); % retrieves 1st measurement
meas2 = getappdata(0,'measurement2');  % retrieves 2nd measurement
meas3 = getappdata(0,'measurement3');  % retrieves 3rd measurement
meas4 = getappdata(0,'measurement4');  % retrieves 4th measurement

if (isempty(meas1) == true || isempty(meas2) == true || isempty(meas3) == true...
        || isempty(meas4) == true) % if any measurement box is empty
    errordlg('at least one measurement is missing, Please enter all four measurements again.', 'Error') % display error
else
measurements = [meas1 meas2 meas3 meas4]; % create a measurement vector
[num,predictionString] = KnnCore(measurements,meas,species,5); % classify measurements using the algorithm
setappdata(0,'result',predictionString); % saves the result
textboxString = sprintf('this flower species is: %s',predictionString); % saves the result in a string
set(handles.resultText,'String',textboxString,'FontSize',15); % displays the result to user

% resets all measurements for next entries
setappdata(0,'measurement1','');
setappdata(0,'measurement2','');
setappdata(0,'measurement3','');
setappdata(0,'measurement4','');

end




% --- Executes on button press in saveButton.
function saveButton_Callback(hObject, eventdata, handles)
% hObject    handle to saveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = getappdata(0,'outputFileName'); % retrieves output file name
if isempty(filename) == true % if the save button is pressed without an output file name
    errordlg('Please enter an output file name','Error'); % display error
elseif isempty(filename) == false % if there is a file name
    stringName = sprintf('%s.txt',filename); % save file name as string with .txt extension
    fileId = fopen(stringName,'w+'); % opens the file
    fprintf(fileId, getappdata(0,'result')); % prints result to file
    fclose(fileId); % closes file
setappdata(0,'outputFileName',''); %resets file name
end
