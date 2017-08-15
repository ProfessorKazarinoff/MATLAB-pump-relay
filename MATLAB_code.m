%% Clear command window, variables, plot windows and connected devices
clc, clear all
close all
delete(instrfindall); % deletes any existing serial ports

%% Open the serial port to connect to the Arduino
arduino=serial('/dev/cu.usbserial-DN02SRDI','BaudRate',9600); % change first argument to correspond to the port the arduino is hooked up to
fopen(arduino);
serial_read = fscanf(arduino, '%d',1) %read current serial output from arduino (0 is open/not connected, 1 is closed/connected)

%% Offer user options based on relay state
while serial_read == 0 % if relay is open/not connected, offer three options
    strA = input('Pump is turned off, enter 1 to turn pump on, 2 to set timer, 3 to exit: ','s') % accept user input
    pump_controla - str2double(strA)
    switch pump_controla
        case 1
            fprintf(arduino, '%d', 1); %send 1 to arduino to close relay
            serial_read = fscanf(arduino,'%d',1) %read serial input to confirm pump was turned off
        case 2
            pump_on_minutes = input('Enter time for pump to remain on in minutes: ');
            fprintf(arduino, '%d'. 1)
            time_length = minutes(pump_on_minutes);
            end_time = datetime('now') + time_length;
                while (end_time > datetime('now')
                end
                fprintf(arduino, '%d', 0);
                while (serial_read == 1)
                    serial_read = fscanf(arduino,'%d',1)
                end
        case 3
            fclose(arduino);
            break
        otherwise
            fprintf('That is not an accepted input\n')
    end
    
    while serial_read ==1
        strB = input('pump is turned on, enter 0 to turn off, 1 to turn pump off and exit: ','s');
        pump_controlb = str2double(strB);
        switch pump_controlb
            case 0
            case 1
                fprintclc, clear all
close all
delete(instrfindall); % deletes any existing serial ports

%% Open the serial port to connect to the Arduino
arduino=serial('/dev/cu.usbserial-DN02SRDI','BaudRate',9600); % change first argument to correspond to the port the arduino is hooked up to
fopen(arduino);
serial_read = fscanf(arduion, '%d',1) % read current serial output from arduino (0 is open/not connected, 1 is closed/connected)f(arduino,'%d',0)
                fclose(arduino)
                break
            otherwise
                fprintf('That is not an accepted input \n')
        end
    end
end
            
