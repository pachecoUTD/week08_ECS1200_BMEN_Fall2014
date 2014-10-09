% Before running this code, connect to the Arduino using the command
% a = arduino('COM3');
% Note: your COM port number may be different

%% Initialize motor5
initialize_motor5

% Note: Motors #1 - #4 are initialized when you connect to the arduino
% using the a = arduino('COM3') command. Because motor #5 is controlled by
% an external IC (i.e., not on the motor shield), it needs to be
% initialized separately.


%% Motor test code

motorID = 1;

% This command sets the speed of motor 'motorID'. The motorSpeed variable
% should be an integer between 0 and 255
motorSpeed = 255;
motor5 = motorController(a, motor5, motorID, 'speed', motorSpeed);

% This command runs motor 'motorID' forward.
motor5 = motorController(a, motor5, motorID, 'forward');

% After starting the motor, we pause for the length of time we want the
% motor to run
pause(2);

% After the pause, we issue a 'release' command to stop the motor
motor5 = motorController(a, motor5, motorID, 'release');

% We now pause again to give some time between moving foward and
% backward
pause(1);

% We now tell the motor to move backward
motor5 = motorController(a, motor5, motorID, 'backward');

% Again we pause for the length of time we want the motor to run
pause(5);

% After running the motor backward, we now stop it
motor5 = motorController(a, motor5, motorID, 'release');











