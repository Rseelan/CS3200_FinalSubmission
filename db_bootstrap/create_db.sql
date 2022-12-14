CREATE DATABASE SelfDrivingUI;

CREATE USER 'webapp'@'%' IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES ON SelfDrivingUI.* TO 'webapp'@'%';
FLUSH PRIVILEGES;

USE SelfDrivingUI;

CREATE TABLE ThermalCoolingSystems (
   ComponentID VARCHAR(10) PRIMARY KEY,
   FluidVolumeFlowRate Float,
   FluidTemp Float,
   FluidPressure Float

);

CREATE TABLE LowVoltageSystem (
   ComponentID VARCHAR(10) PRIMARY KEY,
   Temp Float,
   Voltage Float,
   Current Float,
   AcknowledgeMessageRecieved Bool

);

CREATE TABLE HighVoltageSystem (
   ComponentID VARCHAR(10) PRIMARY KEY,
   Temp Float,
   Voltage Float,
   Current Float

);

CREATE TABLE StructuralHealth (
   RegionID VARCHAR(10) PRIMARY KEY,
   Region TEXT,
   Temp Float,
   Strain Float

);

CREATE TABLE CabinDiagnostics (
   CabinLocationID VARCHAR(10) PRIMARY KEY,
   Temp Float,
   Humidity Float,
   AirQuality Float

);

CREATE TABLE Camera (
   CameraID VARCHAR(10) PRIMARY KEY,
   BoundingBoxFrameTopLeftX INTEGER,
   BoundingBoxFrameTopLeftY INTEGER,
   BoundingBoxFrameBottomRightX INTEGER,
   BoundingBoxFrameBottomRightY Integer,
   TimeStamp Float,
   ObjectCertainty Float,
   IdentifiedObject Text,
   InternalVehicleLocation_Yaw Float,
   InternalVehicleLocation_Pitch Float,
   InternalVehicleLocation_Roll Float,
   InternalVehicleLocation_X Float,
   InternalVehicleLocation_Y Float,
   InternalVehicleLocation_Z Float

);


CREATE TABLE CameraDatasheet (
   CameraPartNumber VARCHAR(10) PRIMARY KEY,
   OutputDatatype Text NOT NULL ,
   FieldOfView Integer NOT NULL ,
   PixelSize INTEGER NOT NULL ,
   ActiveArraySize INTEGER NOT NULL,
   BoardDimensions INTEGER NOT NULL,
   FocusingRange INTEGER NOT NULL

);

   
CREATE TABLE PredictionNode (
   ObjectID VARCHAR(10) PRIMARY KEY,
   Acceleration Float,
   Velocity Float,
   ThetaX Float,
   ThetaY Float,
   ThetaZ Float

);


CREATE TABLE GPS (
   GPSID VARCHAR(10) PRIMARY KEY,
   VerticalAccuracy Float,
   HorizontalAccuracy Float,
   TimeStamp Float,
   Latitude Float,
   Longitude Float,
   NumberOfSatellites INTEGER,
   InternalVehicleLocation_Yaw Float,
   InternalVehicleLocation_Pitch Float,
   InternalVehicleLocation_Roll Float,
   InternalVehicleLocation_X Float,
   InternalVehicleLocation_Y Float,
   InternalVehicleLocation_Z Float

);


CREATE TABLE GPS_ExternalParameters (
   GPSPartNumber VARCHAR(10),
   Gain INTEGER NOT NULL ,
   Frequency INTEGER NOT NULL ,
   NMEAOutputMessageType Text NOT NULL ,
   BaudRate INTEGER NOT NULL

);


CREATE TABLE InertialMeasurementUnit (
   IMU_ID VARCHAR(10) PRIMARY KEY,
   AngularVelocityX Float,
   AngularVelocityY Float,
   AngularVelocityZ Float,
   IMU_X_Acceleration Float,
   IMU_Y_Acceleration Float,
   IMU_Z_Acceleration Float,
   TimeStamp Float,
   InternalVehicleLocation_Yaw Float,
   InternalVehicleLocation_Pitch Float,
   InternalVehicleLocation_Roll Float,
   InternalVehicleLocation_X Float,
   InternalVehicleLocation_Y Float,
   InternalVehicleLocation_Z Float
    
);


CREATE TABLE InertialMeasurementUnit_ExternalParameters (
   IMUPartNumber VARCHAR(10),
   SampleRate INTEGER NOT NULL ,
   Noise INTEGER NOT NULL ,
   NoiseDensity INTEGER NOT NULL ,
   Bias INTEGER NOT NULL

);


CREATE TABLE DerivedVehicleData (
   VehicleID VARCHAR(10) PRIMARY KEY,
   VehicleYaw Float,
   VehiclePitch Float,
   VehicleRoll Float,
   VehicleX Float,
   VehicleY Float,
   VehicleZ Float

);


insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (1, 2, 75, 43);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (2, 37, -50, 35);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (3, 7, 6, 26);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (4, 15, -134, 45);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (5, 28, 112, 40);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (6, 17, 2, 33);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (7, 1, -92, 44);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (8, 0, 69, 31);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (9, 29, 10, 28);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (10, 50, -128, 37);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (11, 23, -38, 25);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (12, 23, 119, 32);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (13, 21, 58, 42);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (14, 38, 50, 41);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (15, 34, -39, 26);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (16, 16, 127, 39);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (17, 5, -118, 43);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (18, 15, -42, 26);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (19, 33, -115, 37);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (20, 14, 132, 28);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (21, 4, -106, 44);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (22, 12, -144, 27);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (23, 48, 144, 40);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (24, 42, -22, 26);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (25, 50, -5, 25);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (26, 18, -30, 30);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (27, 33, -49, 31);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (28, 2, 85, 35);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (29, 35, 22, 27);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (30, 32, -12, 45);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (31, 10, 59, 25);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (32, 46, -122, 27);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (33, 1, -95, 40);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (34, 46, 110, 42);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (35, 18, -24, 27);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (36, 16, -2, 38);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (37, 48, -102, 34);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (38, 40, -8, 37);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (39, 1, -16, 38);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (40, 38, 92, 27);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (41, 15, 124, 35);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (42, 33, 65, 25);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (43, 49, 36, 38);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (44, 18, -148, 44);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (45, 30, 125, 43);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (46, 10, 32, 41);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (47, 34, 112, 40);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (48, 26, 87, 37);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (49, 50, 30, 36);
insert into ThermalCoolingSystems (ComponentID, FluidVolumeFlowRate, FluidTemp, FluidPressure) values (50, 26, -136, 33);



insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (1, -134, 7.8769334058, 5, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (2, 103, 17.0074094762, 2, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (3, 36, 2.1889736821, 3, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (4, 76, 2.2110739969, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (5, 58, 17.7527114458, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (6, -9, 21.7528050151, 6, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (7, 111, 6.1500108374, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (8, -97, 15.3291065869, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (9, 90, 9.0819336483, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (10, -81, 12.3864225292, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (11, 108, 1.3646357039, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (12, 16, 17.0891111723, 10, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (13, 64, 8.1538408548, 1, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (14, -37, 12.751995516, 0, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (15, -24, 14.8605904471, 2, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (16, -142, 22.3280102389, 6, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (17, 30, 23.8984131298, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (18, 77, 16.3851229166, 8, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (19, 15, 19.8743208603, 5, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (20, -129, 21.4434637963, 1, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (21, 138, 4.817468914, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (22, 134, 8.8138892489, 5, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (23, 85, 4.5630947501, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (24, 37, 2.1503435614, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (25, -13, 18.806228503, 2, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (26, 84, 23.5719098101, 1, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (27, 110, 10.1258689675, 4, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (28, -13, 7.074764239, 4, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (29, -123, 9.1634444351, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (30, 7, 4.7743860696, 8, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (31, -41, 7.1044576174, 0, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (32, -81, 2.6738032062, 6, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (33, -141, 19.1181895434, 1, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (34, 0, 5.9240819762, 0, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (35, -35, 21.051306645, 0, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (36, 145, 1.6137364757, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (37, -84, 19.124271657, 3, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (38, -17, 11.5885576946, 4, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (39, 89, 7.8640928455, 2, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (40, 89, 23.6739228327, 7, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (41, -19, 10.2260923811, 0, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (42, -112, 10.2826598568, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (43, -92, 8.7177980617, 9, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (44, -141, 12.4662148983, 2, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (45, 109, 10.0559522715, 10, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (46, -126, 0.7473951149, 6, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (47, -109, 14.9309821434, 0, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (48, -89, 21.4690751898, 10, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (49, -22, 2.8118876689, 2, true);
insert into LowVoltageSystem (ComponentID, Temp, Voltage, Current, AcknowledgeMessageRecieved) values (50, -14, 5.0165184291, 1, true);



insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (1, 16, 26, 21.3165955913);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (2, 46, 333, 22.490184831);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (3, 31, 199, 43.7710873535);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (4, 79, 123, 36.3207969383);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (5, -97, 195, 21.6414310256);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (6, -82, 348, 42.7042623094);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (7, -102, 179, 30.8229281532);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (8, 55, 382, 0.8729045178);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (9, -72, 3, 41.297282125);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (10, -25, 441, 43.0764594465);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (11, 59, 246, 8.5461256394);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (12, -90, 312, 45.0365582473);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (13, 77, 212, 40.4281830505);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (14, 93, 45, 16.3296305069);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (15, 38, 374, 37.3732456449);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (16, -90, 491, 41.0215836611);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (17, 5, 343, 10.8203450221);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (18, 25, 305, 42.9268430348);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (19, -127, 205, 13.9934978982);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (20, 60, 291, 42.3902634706);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (21, 38, 86, 23.0939739099);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (22, -128, 83, 46.7218787537);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (23, 94, 340, 42.2176445421);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (24, -9, 56, 27.7858490562);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (25, 87, 199, 45.3434252031);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (26, 116, 372, 9.4013560676);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (27, -13, 490, 34.058507707);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (28, -73, 0, 17.0739821531);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (29, -18, 342, 10.7801401991);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (30, 8, 297, 21.6922784965);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (31, -72, 400, 49.255803249);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (32, 99, 306, 31.0593090114);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (33, 93, 148, 7.3151924546);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (34, 66, 350, 33.8297720047);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (35, -22, 81, 11.5039306646);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (36, 113, 449, 43.8756839932);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (37, -97, 318, 8.7577128944);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (38, 116, 451, 36.1223137535);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (39, 138, 493, 26.4557808139);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (40, -96, 70, 40.1432713804);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (41, 44, 491, 37.1440946114);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (42, 47, 329, 6.3443408701);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (43, -78, 330, 19.9380558548);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (44, -98, 10, 20.8162200291);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (45, 41, 122, 24.3772307504);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (46, -53, 104, 44.6641452444);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (47, 103, 372, 25.882655727);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (48, -72, 494, 25.1259780809);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (49, -141, 450, 9.7248981356);
insert into HighVoltageSystem (ComponentID, Temp, Voltage, Current) values (50, 116, 210, 20.1617742607);



insert into StructuralHealth (RegionID, Region, Temp, Strain) values (1, 'KHND', -110, 21.5618331959);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (2, 'PACZ', 70, -11.5281721292);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (3, 'SCTI', 121, 9.1261429951);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (4, 'SARM', 21, -17.3903881449);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (5, 'KGEY', -20, -7.3120858455);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (6, 'ZGZH', -2, 6.588045809);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (7, 'WAJN', 46, 11.7563466795);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (8, 'KJQF', 93, -31.1968196878);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (9, 'SCAN', 85, -16.3270941549);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (10, 'NZWB', 25, 1.5583036367);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (11, 'KWWD', 102, 29.7900381136);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (12, 'VRMO', -87, 25.6180914248);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (13, null, -84, 1.3245308087);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (14, 'HKEL', -101, 1.8388702323);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (15, 'SPZO', 113, 19.5172123605);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (16, 'YGLI', -140, 21.5787451385);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (17, 'MMMV', 74, 14.1514241703);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (18, 'YSMP', -54, -6.8160323627);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (19, null, -91, 20.6329257788);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (20, 'EDDC', 111, 13.9076108164);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (21, 'SSQM', -52, -18.7966647324);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (22, 'KSUN', -133, 3.1480404125);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (23, 'KCLE', -60, 25.8589737894);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (24, 'KERR', -89, 6.2267463314);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (25, 'SNGA', -69, -29.6987940925);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (26, 'SLET', -90, -28.2321281152);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (27, 'VHST', -126, 29.0863106691);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (28, null, -123, -32.0463543248);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (29, 'SNNU', -68, 10.0856790374);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (30, 'EGNR', -72, -27.5416733239);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (31, 'SAAC', -103, 12.1665204684);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (32, 'LSZC', 61, 11.9063460494);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (33, 'YWWG', -141, -4.3531188417);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (34, 'SNEM', -59, -10.4983151602);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (35, 'KBKF', -27, -28.119434719);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (36, 'MRCH', -36, -14.5850877725);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (37, 'YNRV', 129, 19.174519731);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (38, 'KLMT', -79, 11.5195097786);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (39, 'Z13', -93, 16.619662608);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (40, 'SKCA', 136, -20.9071921876);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (41, 'FEGF', 15, 13.9744891131);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (42, 'EDAU', -114, 17.8214192903);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (43, 'NWWP', 38, -6.705488559);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (44, 'LFRV', -138, 4.7424930396);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (45, 'UOOO', -85, -8.3324180978);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (46, 'AGAR', -96, -20.8726726158);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (47, 'ESNU', -61, -14.3959796383);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (48, 'KMCC', -68, 0.8883879579);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (49, 'SCAR', -150, -7.2485926352);
insert into StructuralHealth (RegionID, Region, Temp, Strain) values (50, 'ZSLG', -86, 13.94228576);


insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (1, -125.4640299353, 10.0800855208, 173);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (2, 38.3515646661, 4.9336774557, 69);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (3, -113.4307427591, 11.4634979358, 49);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (4, 28.3531237186, 12.6276055703, 157);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (5, 38.2078620284, 9.1091132663, 7);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (6, -117.9705721347, 8.1604204113, 157);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (7, -11.0448483608, 12.6608678833, 161);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (8, 27.3199722973, 9.4106807987, 33);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (9, 75.9536782928, 5.7414308424, 76);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (10, -34.5480565924, 7.9152929519, 7);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (11, -70.3865268641, 10.2890533286, 73);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (12, 115.3201948406, 4.2608401917, 136);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (13, 80.271062048, 7.715080729, 152);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (14, 101.6430431523, 8.2614318231, 77);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (15, -81.8500133557, 10.1405974889, 112);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (16, 51.5521378569, 2.9215698776, 17);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (17, -126.9813628179, 6.7602867555, 109);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (18, -43.5296137957, 9.1234086991, 112);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (19, -36.9706133279, 4.0120011107, 110);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (20, 4.6524998106, 0.5093126554, 36);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (21, 116.1999351888, 0.4375112204, 85);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (22, 37.7884084238, 7.6906496055, 73);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (23, -148.8302273987, 7.8950940301, 41);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (24, 9.8891063023, 7.8341720257, 27);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (25, 102.5031365353, 14.8349698734, 164);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (26, 96.3370456725, 7.8930314432, 2);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (27, 26.8669468457, 9.9972619161, 162);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (28, -109.5072742115, 13.8704897183, 97);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (29, 77.1445991557, 10.9615736736, 132);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (30, -59.5747900433, 2.1416601002, 80);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (31, -30.1493161684, 6.1978559737, 23);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (32, -19.2689055425, 2.0200072326, 70);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (33, 96.4421038666, 8.8861084716, 116);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (34, -21.207997071, 5.5283085411, 45);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (35, -136.6139056323, 0.4350867125, 102);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (36, -145.3832805961, 10.2332788678, 119);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (37, 100.709017331, 8.0140640805, 50);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (38, -126.8582625174, 3.946240913, 30);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (39, -124.612149837, 4.0447940131, 102);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (40, -34.0425977128, 11.6978662392, 97);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (41, 89.206155828, 7.7028717889, 197);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (42, 143.6953298176, 14.736261022, 49);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (43, -136.109832192, 9.4994300663, 21);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (44, 47.1732660796, 3.0298384711, 96);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (45, 100.41218717, 13.3521183599, 155);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (46, -94.8731040145, 0.7477461328, 71);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (47, 61.9423699297, 9.3421580792, 50);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (48, 105.4550553467, 9.1648610478, 58);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (49, -77.8000659682, 3.223320704, 107);
insert into CabinDiagnostics (CabinLocationID, Temp, Humidity, AirQuality) values (50, -73.7662523814, 7.804510234, 55);


insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (1, 190, 368, 139, 196, '1642115074000', 62.4562675973, 'human', -12.6941254433, 3.5850819474, 13.9937266078, -477.7515351392, -87.4875073321, -277.7646299546);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (2, 139, 156, 380, 201, '1667438882000', 9.9383653397, 'stopSign', 2.4902216818, 10.1035809182, -14.10835141, 431.8620158635, -489.1785471045, -450.4494016486);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (3, 297, 135, 266, 196, '1661235534000', 68.8634943263, 'rightOnlySign', 8.7605040495, 2.1491931268, 0.2745838104, -495.216396986, -80.9072782938, -482.9029275389);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (4, 218, 246, 396, 357, '1666465210000', 61.31634787, 'pizzaStand', -0.6515036779, 11.8410566134, -4.9659634771, -63.1988510616, -410.7210655217, 288.7483769148);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (5, 368, 331, 238, 188, '1660640819000', 56.5825289698, 'stopSign', 3.1944812724, 5.0804353095, -5.5733131402, 411.3444095003, -242.9189884157, -459.0947454058);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (6, 275, 162, 201, 54, '1654663918000', 30.8290250699, 'rightOnlySign', 10.8824749799, -8.1675858326, -1.9357449457, -497.6309109338, 357.829188936, 78.9947092226);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (7, 184, 389, 95, 186, '1656822727000', 49.0412378273, 'stopSign', 9.6376540465, -10.602709248, -6.8005677635, -164.5656205176, 399.5025409043, -259.8709185319);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (8, 143, 218, 383, 145, '1659896253000', 3.5890215129, 'rightOnlySign', 12.7207191315, -5.7618379706, -6.6439297176, 306.2381210062, 80.2083274901, -244.3816540142);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (9, 221, 389, 373, 382, '1640539691000', 14.07492118, 'stopLight', 1.5478531575, 1.8801401104, 14.8748117329, -107.0936551917, 423.0610229584, 391.7050150956);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (10, 37, 367, 271, 140, '1666922171000', 99.3224618852, 'human', 13.9679076164, -2.3577421804, 6.2770413427, -189.2905259261, 225.4739312643, 461.5395787886);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (11, 124, 129, 394, 375, '1662654642000', 5.7839143634, 'car', 7.9765965637, -2.5192782834, -0.7873699379, 340.9659591975, -375.8027570476, -108.699543444);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (12, 140, 359, 140, 90, '1646772426000', 24.9761453496, 'stopSign', 11.3548274444, -3.2117307225, 5.6833036864, 302.7953350837, -225.9706755336, -38.7279972073);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (13, 118, 346, 0, 360, '1645489145000', 83.0145826504, 'dog', 10.5706360429, -2.4413018816, -13.9601459542, -486.7706567954, 132.990886105, 4.9059887465);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (14, 306, 92, 274, 98, '1639043812000', 22.5877535451, 'car', -12.3585372212, -8.8113459662, -3.2468720865, -394.9381261543, 197.9342679963, -367.0415145063);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (15, 377, 199, 394, 120, '1651682603000', 24.511202595, 'trashCan', -2.374173881, 10.8751145082, 7.2487581964, -28.9725388663, 498.3170322209, -195.4660918805);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (16, 140, 150, 248, 334, '1661980879000', 71.6296941883, 'dog', 2.6496346577, -1.3980761613, 7.9662040747, -11.4321219912, -491.46543536, -343.7852489917);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (17, 133, 388, 76, 262, '1664466915000', 46.015849393, 'car', 10.8383145385, -13.7230892991, -13.562413402, -297.7644670436, 168.480932358, 28.7078425801);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (18, 103, 327, 390, 308, '1662738801000', 99.485719937, 'rightOnlySign', 14.9496364871, -12.9622779216, 8.1337267858, 434.2940705616, -146.9441917858, 358.2887729941);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (19, 131, 313, 55, 33, '1646064997000', 75.4724015008, 'human', 3.9836404813, -9.9031942631, -2.6284016554, 168.2655960677, 229.6936875511, -174.7436153975);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (20, 332, 394, 229, 278, '1664815894000', 25.3914984181, 'stopSign', 3.7354148359, -0.799815346, -10.3009023619, 243.6672068438, 389.0672255289, 80.1431056888);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (21, 322, 367, 179, 76, '1652877325000', 44.68131339, 'dog', 3.4600589608, -0.2574289406, -12.8815391497, -451.3157643996, -405.3107835097, 272.7506150208);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (22, 14, 377, 55, 36, '1645394139000', 26.3976956948, 'pizzaStand', -10.4741252565, -3.1187268852, 13.6866468298, 276.1796867907, 388.8688631592, -223.5333450845);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (23, 105, 250, 139, 152, '1647358859000', 70.5518684082, 'rightOnlySign', -6.637343621, -5.303270711, 6.1223215645, -487.0911185978, 137.7981073972, 214.320962862);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (24, 64, 97, 362, 85, '1664143726000', 94.1601763389, 'car', -5.4653634544, -8.1456783389, -8.9914829434, 360.3246242222, -290.5356669866, 265.9075450542);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (25, 379, 219, 273, 46, '1663288276000', 32.0981460123, 'human', 6.5492702126, -11.6304166047, -14.2537937312, 108.8582826624, -184.9705597634, -73.4795332431);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (26, 249, 104, 181, 285, '1646181104000', 60.5908514042, 'dog', -10.1189135353, 14.3022912244, 9.663309469, -367.1727700571, -375.5930406466, -27.2675506635);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (27, 74, 267, 240, 160, '1667519632000', 76.9038806524, 'pizzaStand', -5.9757769773, -1.0389137579, -10.7756330001, -171.6926236578, 134.0603582259, -100.5002256024);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (28, 151, 72, 1, 341, '1666187670000', 32.6021773445, 'dog', 10.5344402341, 4.6617604643, -2.1655980565, 477.5658254327, 55.4140933213, -477.6243551768);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (29, 294, 10, 158, 76, '1665258369000', 98.1802630474, 'stopSign', -7.4452910021, -3.1584634906, 9.7556475962, -347.3271229573, 16.8742136308, -22.485033316);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (30, 200, 79, 76, 80, '1667452281000', 79.8150277404, 'pizzaStand', 14.3372139646, 12.9224265764, -3.4421981691, -136.5071487877, -50.5223753772, -497.4151413915);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (31, 353, 265, 84, 325, '1642324389000', 96.3162158821, 'pizzaStand', 13.5314068283, 5.5942095335, 11.5225654164, 175.6572722626, -422.4426932848, 396.2251642964);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (32, 378, 265, 78, 355, '1657780025000', 21.1030161915, 'stopSign', -14.1129859335, -11.0607963931, 12.565184174, -39.3828075233, 49.0470685268, -436.6302251949);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (33, 266, 241, 252, 332, '1667318195000', 26.8767603053, 'stopLight', 10.2804767954, -7.331780862, -14.6626487992, -140.0458716618, 212.15615068, 21.9819985182);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (34, 17, 268, 177, 374, '1667413486000', 98.9998647847, 'stopSign', -11.8433172992, -4.8644094409, 7.2357116251, -418.5551945515, -250.8266951573, -457.735653056);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (35, 391, 220, 175, 230, '1653600788000', 0.914864381, 'rightOnlySign', 4.5739093691, 7.0205419313, 4.6843477637, -393.683065745, 412.6726294788, 133.8678577501);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (36, 96, 179, 54, 258, '1667550442000', 89.517278616, 'rightOnlySign', -3.2729287137, -11.7488544386, 14.356039787, 403.1936242042, -106.7840381939, 477.178223326);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (37, 138, 152, 162, 367, '1655426901000', 91.331284905, 'trashCan', 14.4976894764, 0.1440776972, -12.2053996397, 139.9466122525, -95.3499251204, -35.5498242891);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (38, 58, 264, 179, 138, '1665690519000', 37.8323727863, 'rightOnlySign', 4.4538932638, 8.8056414037, 14.9987739915, 260.5849702909, -236.4071805443, -269.7083508238);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (39, 305, 321, 387, 60, '1655250478000', 3.1006609075, 'human', 9.7799846045, -9.5988526881, -14.347034653, -249.4195731358, 289.626811282, -119.6750702535);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (40, 134, 63, 167, 221, '1655952192000', 79.9799205388, 'car', 7.3383979781, -7.9347432914, -4.143733955, 68.2769938986, 33.803545216, 91.9107394557);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (41, 86, 380, 317, 2, '1644142063000', 63.4774937724, 'stopLight', 11.3673672841, -8.1864437165, -11.0167423768, -349.5592992649, -245.7386570268, -347.9887747303);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (42, 213, 303, 132, 321, '1656490329000', 74.0197372931, 'trashCan', 10.2633768155, -11.4528436454, -9.1149851672, 122.7764584913, -314.9533424368, 31.6129561976);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (43, 13, 133, 229, 178, '1652966370000', 18.2281998274, 'rightOnlySign', -3.7747450143, 5.5965200735, 2.7932443707, 139.8313380179, -179.5514254813, -349.5885115933);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (44, 327, 26, 42, 21, '1657409160000', 66.0113886164, 'dog', -3.4700090151, -2.4899827945, 12.544233977, -330.9538335353, -431.4947976261, -376.9291146119);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (45, 376, 245, 199, 190, '1669973760000', 45.7345940912, 'human', 3.9856272421, 13.367356285, -10.5704591572, 90.3467155848, 8.5310058272, 288.8785813342);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (46, 344, 2, 37, 182, '1656629877000', 60.9857371777, 'car', -13.2159603345, -11.4551196793, -7.5838274186, -401.7479998097, 243.897985299, -8.380735304);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (47, 196, 221, 368, 279, '1652197829000', 7.8877753198, 'human', -14.3975354472, -10.984837915, 0.5760905594, 199.3368236915, -480.5905983857, 208.1342655987);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (48, 47, 112, 143, 102, '1642306875000', 99.9639403429, 'stopLight', 11.3484918316, -11.0338986369, 13.2857186689, -365.0110301592, -474.4312163959, -455.3736412271);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (49, 50, 139, 223, 282, '1644084913000', 64.1785638594, 'dog', 5.9821145374, 11.2075974477, 0.6582369233, 345.486885813, -99.426808629, 37.1295991151);
insert into Camera (CameraID, BoundingBoxFrameTopLeftX, BoundingBoxFrameTopLeftY, BoundingBoxFrameBottomRightX, BoundingBoxFrameBottomRightY, TimeStamp, ObjectCertainty, IdentifiedObject, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (50, 231, 365, 188, 170, '1638795977000', 95.6699815861, 'trashCan', 1.0715637845, -8.563038934, -11.8030087691, 265.7468910391, -167.6743546224, -482.5085312518);

insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (1, 'SDI', 3, 3, 655, 405, 30);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (2, 'SDI', 2, 48, 1090, 603, 42);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (3, 'HD', 6, 40, 1126, 1876, 94);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (4, 'Analog', 1, 8, 113, 1498, 87);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (5, 'MIPICSI2', 10, 11, 307, 1107, 93);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (6, 'SDI', 4, 40, 1322, 554, 39);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (7, 'Analog', 0, 21, 1014, 1195, 53);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (8, 'HD', 2, 16, 1356, 608, 58);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (9, 'Analog', 2, 12, 673, 1728, 70);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (10, 'MIPICSI2', 7, 37, 112, 510, 81);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (11, 'SDI', 8, 12, 194, 814, 32);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (12, 'MIPICSI2', 10, 19, 570, 1504, 54);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (13, 'HD', 5, 35, 876, 1392, 62);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (14, 'Analog', 0, 8, 844, 1614, 71);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (15, 'SDI', 0, 26, 17, 888, 64);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (16, 'SDI', 1, 34, 775, 1965, 72);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (17, 'HD', 9, 2, 33, 1587, 80);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (18, 'Analog', 6, 37, 1212, 435, 68);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (19, 'Analog', 0, 13, 276, 643, 68);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (20, 'HD', 5, 33, 205, 228, 70);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (21, 'HD', 10, 2, 999, 13, 45);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (22, 'MIPICSI2', 0, 35, 467, 157, 96);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (23, 'MIPICSI2', 3, 49, 993, 512, 82);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (24, 'MIPICSI2', 6, 23, 1085, 556, 82);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (25, 'SDI', 10, 20, 116, 1641, 52);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (26, 'SDI', 4, 21, 1223, 1751, 44);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (27, 'MIPICSI2', 1, 49, 368, 87, 98);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (28, 'MIPICSI2', 5, 5, 328, 567, 77);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (29, 'HD', 0, 6, 363, 887, 51);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (30, 'Analog', 10, 28, 165, 727, 45);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (31, 'MIPICSI2', 9, 15, 55, 1773, 41);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (32, 'HD', 8, 9, 11, 1128, 31);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (33, 'HD', 4, 32, 443, 1392, 62);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (34, 'HD', 5, 38, 1305, 1159, 45);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (35, 'HD', 3, 7, 1261, 1601, 71);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (36, 'MIPICSI2', 9, 19, 388, 1953, 55);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (37, 'MIPICSI2', 6, 42, 331, 1794, 85);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (38, 'SDI', 7, 15, 783, 823, 99);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (39, 'HD', 10, 18, 439, 1790, 93);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (40, 'MIPICSI2', 4, 11, 413, 1474, 52);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (41, 'Analog', 8, 10, 1186, 1872, 43);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (42, 'Analog', 5, 42, 675, 934, 42);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (43, 'Analog', 8, 4, 1034, 692, 34);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (44, 'Analog', 4, 42, 1194, 286, 88);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (45, 'MIPICSI2', 1, 5, 451, 752, 62);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (46, 'HD', 0, 3, 1195, 1520, 57);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (47, 'MIPICSI2', 3, 50, 483, 464, 52);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (48, 'SDI', 9, 14, 525, 126, 54);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (49, 'HD', 5, 42, 1030, 1060, 64);
insert into CameraDatasheet (CameraPartNumber, OutputDatatype, FieldOfView, PixelSize, ActiveArraySize, BoardDimensions, FocusingRange) values (50, 'Analog', 10, 35, 961, 1977, 35);

insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (1, 13.6419542847, 18.908178787, 3.4277895597, 0.0293923847, 0.0414837519);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (2, 15.9819257712, 3.5705435316, 0.3292490838, 3.0326733309, 3.5361432477);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (3, 2.5740770898, 5.4605928846, 3.4683069527, 0.146334215, 1.657414525);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (4, 20.1952417259, 11.5136372791, 1.8770934214, 2.6590203925, 0.0168277086);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (5, 20.1311692872, 10.2020651645, 3.5166280821, 1.0680526998, 3.2191099346);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (6, 7.8209143323, 5.1435749725, 0.630402572, 3.2828942221, 0.9149438876);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (7, 3.7759600605, 9.1414508862, 1.3594350607, 0.4968170457, 2.2052787371);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (8, 25.0124922606, 17.4871777446, 0.0538481815, 3.1219297839, 2.1543270446);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (9, 8.2629517558, 12.7526653889, 1.4373194086, 3.2270080862, 2.9006486298);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (10, 4.7911448447, 9.9423990541, 1.8097197577, 0.456439997, 0.0937316171);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (11, 10.7229654384, 15.540160697, 0.0766148282, 3.4534346625, 2.4720229527);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (12, 7.6218706271, 18.472854467, 3.9732746509, 2.2545158881, 0.3500016607);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (13, 29.2563313195, 0.7637848498, 1.946095278, 2.8666537469, 1.6206819506);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (14, 13.4371076653, 3.3668448579, 1.7978738112, 1.1012150478, 0.5638963091);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (15, 5.0727403809, 9.3353955795, 2.469293475, 2.7819492572, 0.8853181612);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (16, 29.3614539039, 11.8582993518, 0.0913970787, 0.5118471394, 1.8493728393);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (17, 11.847393248, 11.3504489285, 3.0002984088, 3.0154173044, 3.7191278955);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (18, 18.5253486832, 19.0623954582, 2.9120100635, 2.4207843172, 3.0505632622);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (19, 16.2988734836, 14.3472982609, 1.9861776826, 1.9719996281, 2.8963407379);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (20, 7.3602376284, 15.1494886676, 2.2190961239, 1.9727861289, 3.5372298093);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (21, 19.0514416953, 18.2256261967, 1.2948647875, 3.4142209663, 3.1199338978);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (22, 29.2277004032, 7.3148373318, 1.0467885561, 3.9630813875, 1.5848548389);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (23, 8.8773216649, 6.2795575989, 1.0453719339, 0.8148508772, 3.0111115072);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (24, 26.9017230385, 5.0941816152, 3.2041697989, 1.9390860981, 2.0124153794);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (25, 22.7623350903, 16.7788785096, 1.8502011032, 0.1864235764, 1.334856738);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (26, 6.6469217339, 10.9539726792, 1.4966358501, 0.2830588665, 1.7231291992);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (27, 5.4860061377, 5.6660662442, 0.6226222056, 2.9048286476, 3.7363808337);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (28, 12.7985372144, 1.5769329903, 1.5079854447, 1.6392175332, 2.6648715097);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (29, 21.7540387769, 14.6807818093, 1.3269512519, 2.7023811449, 0.4049860513);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (30, 26.7620624462, 6.1256609258, 3.8457485576, 3.8215324983, 3.2196266361);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (31, 24.8964607998, 4.7455483581, 0.8075568994, 0.0462423777, 3.3834928676);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (32, 1.5181606888, 4.5093471118, 2.9690723471, 2.1816807978, 3.4632425583);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (33, 11.3296008515, 5.7343083418, 2.3847745603, 2.0804402795, 0.5416153686);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (34, 4.2698234281, 1.0040494233, 1.7396778285, 1.5996771582, 2.3555174005);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (35, 3.2038013177, 14.6004194172, 2.2027778365, 1.1621253178, 3.0453937482);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (36, 12.4040261897, 10.6004061807, 1.1278587389, 3.9421401328, 3.4946906363);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (37, 22.3859520226, 15.4454498053, 0.5391788547, 3.0524949902, 0.4640315455);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (38, 26.6630989903, 12.8481047044, 3.8802044378, 2.0839733404, 1.2581986976);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (39, 18.8171805258, 9.6811879007, 1.302548207, 3.2390612581, 3.4086011974);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (40, 3.4918919539, 0.3197966495, 0.2886151758, 1.9318387481, 1.8147937603);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (41, 16.4711275105, 13.5616028128, 0.8700461452, 3.6441709165, 2.7485834485);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (42, 3.1278812861, 4.0035955716, 0.4493185969, 3.630672687, 2.0804907627);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (43, 28.2574317769, 16.6192060822, 1.4848602793, 2.9182479166, 0.7654288699);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (44, 10.0404137551, 4.6933868872, 0.547599559, 3.7827206753, 2.8715053857);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (45, 5.9508645857, 1.5651036074, 0.8515354142, 0.0308712835, 1.3063187249);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (46, 9.1887371399, 11.7821235702, 1.1235286369, 1.2073301153, 1.9490479526);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (47, 7.4348430482, 6.3739297959, 2.4733065156, 2.7720712403, 0.8214487158);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (48, 21.2404725632, 1.1729743834, 1.4238502754, 1.0176582729, 0.057264982);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (49, 9.525918823, 6.9037927967, 1.9084288747, 1.1985559895, 0.9070789575);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (50, 1.7547284732, 5.5687497148, 2.5980621917, 0.4797341542, 1.5686321525);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (51, 13.4909300997, 12.5562370597, 3.5377872535, 3.9512533337, 1.0349792823);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (52, 0.3688229189, 10.2817491354, 2.0054338405, 1.7194552679, 2.2726780597);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (53, 1.4974785853, 5.1021313933, 2.3618064045, 0.2379941024, 3.8955320287);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (54, 12.1062809365, 3.1005537175, 2.506426622, 0.0731090423, 2.1589941353);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (55, 3.8268123039, 5.3816566854, 2.9163938433, 0.9951627958, 0.2081821452);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (56, 18.5112997468, 9.1174927367, 1.6776881171, 2.3756184216, 3.6078359236);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (57, 28.9138653819, 15.184563835, 3.7154924491, 1.2831389462, 3.0027038172);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (58, 19.5112961786, 14.1105815716, 0.5691664257, 2.8393968657, 0.3244885083);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (59, 3.3115928962, 14.1039114399, 0.6609881704, 2.1729179312, 2.7312870525);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (60, 24.463582207, 15.1517367229, 1.0484740421, 1.4874420529, 3.5539161405);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (61, 13.8192542603, 5.0122077437, 0.2574609851, 1.2737177072, 3.2269624343);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (62, 1.2948747357, 15.2745181192, 1.083773927, 0.9936588279, 1.5087860079);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (63, 0.370500515, 12.8445181863, 0.7622409776, 3.7060545565, 3.4744606184);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (64, 29.7212674017, 3.8946925119, 0.9909067162, 3.050842958, 1.6049905473);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (65, 17.9447292511, 10.5032613539, 2.8129412936, 1.3407316458, 3.5678683287);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (66, 21.5355772875, 4.0659976973, 2.8683276914, 2.3187554137, 1.9963413275);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (67, 17.4992084843, 19.0087310855, 0.4715079392, 3.6586671706, 3.2303400516);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (68, 5.5889541607, 19.6583253545, 0.1721968945, 1.6446641116, 0.1653406582);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (69, 27.2833991694, 9.0742882274, 1.8002324819, 2.6236645346, 0.3392734254);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (70, 14.0993303629, 9.4434180945, 0.942089064, 0.2366240522, 2.5757354826);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (71, 5.4921004929, 2.463652417, 1.6615022692, 3.2920329182, 2.5713553807);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (72, 13.9033053998, 11.8254636874, 3.5066599898, 3.9096975721, 2.5298718645);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (73, 24.8942971602, 18.4739988007, 2.238819189, 1.8348762566, 2.5340198439);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (74, 22.3109082808, 2.2571105898, 0.7094842631, 0.1003431985, 0.4623247891);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (75, 29.9190336748, 2.1622889259, 1.7159826517, 2.0269430927, 3.4143873316);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (76, 3.0909582802, 15.4690655901, 2.6122578951, 1.4218949015, 2.4484497202);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (77, 20.5430104695, 12.2112825913, 2.4939480794, 1.8467796447, 3.9015520763);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (78, 8.4053620678, 4.8846956916, 0.0513936716, 1.4844134615, 0.7503131993);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (79, 14.0142609794, 16.0664015084, 2.4518150373, 1.1300176458, 1.4422420805);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (80, 12.3767463169, 8.276058088, 2.2423160894, 1.2391626814, 3.6273718981);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (81, 15.5249397273, 16.0922721607, 0.9658251712, 3.7265525496, 0.0935332485);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (82, 9.9767275497, 16.2587259722, 2.7029506087, 3.9138617575, 0.9511305798);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (83, 2.9128581919, 2.0155578644, 2.3450235092, 1.2825854189, 1.6124170581);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (84, 0.5086482509, 7.6187563783, 0.9002408329, 2.0557125688, 3.5650847794);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (85, 9.6470795152, 16.9070882075, 0.306218231, 0.8474352669, 3.4660574548);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (86, 20.8113053166, 10.8249660495, 2.0457549105, 2.437801063, 1.8917186527);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (87, 14.3251944717, 4.1038004442, 2.3953272059, 2.8371833749, 3.4914563913);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (88, 29.3380852886, 12.1438648281, 1.6523853033, 3.9966627299, 0.7747280767);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (89, 13.5738753329, 1.390439484, 1.4879016013, 2.4356760933, 1.7371092084);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (90, 22.7980928684, 4.9330696831, 3.9801243653, 0.7929735259, 1.8295820946);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (91, 0.0651589515, 16.9528004661, 0.4437209433, 0.3199699562, 0.8625412282);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (92, 24.4267652117, 4.5590670141, 0.7451730614, 1.2540948047, 0.7632095573);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (93, 21.8742062239, 0.6005166647, 2.190949528, 0.1620649186, 1.9781922413);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (94, 17.293623508, 13.0162181257, 3.5762396473, 3.7469570181, 1.372478778);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (95, 6.9528556442, 13.2181317393, 0.0031638524, 3.8432616936, 3.1445359165);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (96, 1.705560438, 15.4462837812, 2.8771637462, 3.1348560682, 3.6525054272);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (97, 7.2955031742, 7.9352330187, 1.3591070164, 3.9304573916, 2.7137194849);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (98, 25.4427030971, 5.5554164291, 0.3083478291, 2.7771668742, 2.6426132332);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (99, 16.1209370896, 8.954898972, 0.8968449539, 0.1555641236, 2.4181590636);
insert into PredictionNode (ObjectID, Acceleration, Velocity, ThetaX, ThetaY, ThetaZ) values (100, 17.7160038115, 12.8265836084, 0.1429522275, 1.2259218487, 2.7704275977);


insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (1, 35.5949795242, 22.6019878389, '1662843389000', -63.5945597833, 75.0517976512, 1, 0.6146369997, -0.6778234073, 1.4410216272, 190.7463290364, -72.4603830063, -151.191722616);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (2, 91.0848857006, 50.6371729104, '1658785950000', 49.4414576891, 8.8077051089, 1, -2.7154579009, 0.9725750272, 4.2889834069, 5.8202851277, -153.0761973692, -95.9744325708);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (3, 0.397625489, 74.5559578417, '1643589324000', -95.2482518294, -54.5862214117, 14, -4.6003998041, -1.8037538646, 4.45438261, 157.2584099011, 23.6772987985, 93.178782364);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (4, 51.6543040811, 1.6492418564, '1650557470000', -20.703009862, 63.5652870033, 5, 1.195499913, -3.7728013096, -2.0878570061, -90.4571404285, -73.9523122271, -189.1395896812);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (5, 17.4152086747, 92.2192846779, '1641451825000', -3.6134205513, 63.4640834774, 17, -1.8311541893, -4.5429399043, 2.8186482886, 29.4281562282, 167.3133830593, -175.3091996669);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (6, 1.6433314518, 75.9270171543, '1641641396000', -63.1150648527, -99.9393947774, 10, 0.6246922777, 3.7577552411, 4.6260611873, 26.1613888293, -55.6680334902, -160.1519850908);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (7, 70.8109193168, 50.1894418533, '1637297863000', 80.2380410706, 88.69563417, 17, 0.797020834, 0.1951164843, -4.0653759759, -194.9857602852, -40.1589272246, -194.8246758157);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (8, 65.0727442555, 88.081808603, '1657542771000', 48.8236829481, 38.024210785, 14, -2.0362086329, 3.0262295713, -3.1610083236, -49.8445403074, 51.0319173013, -74.5250909007);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (9, 82.0570648569, 61.743870162, '1658622857000', -90.5783820193, 76.5512831298, 21, -1.8581474944, 2.0592038854, 4.1391095513, 88.0569851267, -151.8397227063, -148.1690200227);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (10, 14.5859485107, 18.3360781047, '1639209343000', 57.8339923158, 65.2705284653, 3, 1.4338723827, 3.2804655229, -0.8444010899, -170.2517539433, 50.1801543924, -119.6632427948);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (11, 3.4691750078, 59.496156703, '1638567934000', 1.8123760461, -24.2576045566, 4, 0.1754925674, -1.7255286268, -2.7232212278, 81.0510155666, 11.1402089535, -65.9421295886);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (12, 47.5750792582, 80.3833116239, '1663352072000', -19.7880975069, 9.5882066106, 14, 3.9559237786, -4.8749109778, -0.9707820573, -39.3979164796, 73.8796494393, 96.3039003683);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (13, 90.354214548, 12.2103220633, '1651074553000', 96.7176065828, -35.8517176854, 7, 3.606239337, -0.3169551809, 3.2742291256, -192.0373410374, 193.7208007599, -57.5426680157);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (14, 90.8150494726, 0.9973218064, '1652794253000', -93.5266365599, 69.1150281148, 1, 3.4892895722, -2.0526625302, 3.3294639511, -54.6497486623, 56.7605282732, -114.398000902);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (15, 60.0392626444, 12.4806280587, '1651210536000', 48.3509939007, -35.3860034479, 1, -3.0320783614, 2.3858081318, 0.3024238463, 107.7332457821, 157.2049310939, 116.6235587508);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (16, 45.564089486, 89.4768924642, '1653484177000', -67.5158146174, -30.897731155, 22, -3.1687457591, -1.6390915302, 0.6911835884, -160.8440952361, 39.3187540789, -106.9989453552);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (17, 53.6399531688, 65.2239710139, '1640548191000', -4.7519203936, 14.3360648139, 5, 2.6558705994, 0.6950599559, 2.4625768319, 16.5753751025, -110.8605519466, 17.9578509805);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (18, 35.3094872289, 72.1544744217, '1662511441000', 65.5746220225, -35.5696080788, 6, 2.7155462076, -0.2005246683, -3.5376071542, -109.9174101112, 139.8873675607, -81.3562052636);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (19, 21.5318810117, 54.3860304912, '1667610632000', -82.5193173859, -2.7753089019, 7, -4.4457717774, -1.0675682867, -2.8405955591, 71.6545221146, 31.3027049721, 177.3699808186);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (20, 92.3959055668, 45.9662886454, '1664601791000', 27.7607911584, -11.4372339375, 9, -2.592871177, -4.0625563682, -1.9293172859, 85.2604080062, -60.5696243452, 143.925452482);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (21, 19.1340200935, 74.6446384657, '1642407715000', 49.8523309622, 2.5859693704, 11, 1.3496934444, -2.6055557881, 0.9518178746, -196.5839784625, -107.5665892495, -95.726223019);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (22, 46.6603315395, 36.6080494777, '1640757712000', -36.8576131472, 35.1775160657, 15, 3.9510452668, -1.0417048684, 3.9840000103, -78.2795983494, 150.1559937848, 40.4587296748);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (23, 15.2052719901, 72.3032638591, '1645417097000', -81.8118408142, -15.1934919549, 12, 3.039876882, 1.2800019669, 3.5969547072, 150.4475458317, 169.5837351013, -166.9324633201);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (24, 78.1100778965, 83.0479622421, '1647706226000', 14.6228380487, 51.0759607908, 14, 3.2827938964, -1.8574002938, -0.923243041, -9.8971238854, -149.8563500384, -40.8762322711);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (25, 15.2868212933, 51.6300666436, '1655753609000', -9.8562806154, 50.1818527727, 9, 1.1954478694, -2.5780027136, 0.0649722852, 1.3849863649, 153.167029928, -141.9234470865);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (26, 82.4071402845, 96.5080795999, '1653844510000', 86.6181171459, -59.4020841202, 12, 0.1925868569, 4.1592814993, 2.3343086062, 42.6756438423, -2.0606778818, 164.8376985018);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (27, 45.1112869537, 42.443367082, '1659346765000', -90.4720946964, -16.6192240995, 14, -3.0327815791, -1.1222513326, 3.5758570877, -45.7156193906, -55.8163374041, 171.4119968873);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (28, 82.0993438705, 94.2173979384, '1666738683000', 57.345949696, -82.4782747441, 11, -3.0265113164, 0.2333995597, 1.4449888887, -88.7646662978, 33.2201998576, -73.370546364);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (29, 12.7619742168, 36.9626161528, '1669017569000', -58.8494158196, -39.640045934, 9, -2.4589932968, 3.4352844358, 1.5483865273, -186.1032255917, -185.964653222, -90.275019914);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (30, 19.4854056701, 45.7698598554, '1663948489000', -23.5183765689, 43.4631580324, 3, -3.3835164814, 2.3877077616, 1.7683035306, 197.6663080439, 95.4366103745, 110.8263842777);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (31, 74.0766575133, 40.2963498719, '1655875425000', -40.3194728201, -3.8017831659, 13, 3.9354544189, -2.7411436256, -0.5468256994, -160.3898896523, 44.9434359174, -190.9533501178);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (32, 44.6810059942, 57.6257050732, '1658294808000', 80.3443404973, 28.1580323304, 3, 4.1048828794, 1.4089046635, 4.3954758845, -130.0049824293, -153.7236718464, 124.1429863601);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (33, 13.7248843404, 20.0523684218, '1651854412000', -7.5221704575, -46.9130841594, 10, 0.8457024984, -2.080991651, -3.200636433, 103.3020817485, 159.3076999235, -8.4314667111);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (34, 12.5083092254, 34.7391012744, '1662660116000', 9.7390061413, 30.8300942736, 15, 2.8200384011, 0.8793544538, -1.1215531151, -48.2848908275, -40.0125477914, 30.1903379345);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (35, 45.6307694165, 63.8585616193, '1659489922000', -75.1033867932, -64.4424934538, 10, 1.3815617298, 0.2936684715, 1.9855902742, -110.4618307136, 133.5463828276, -185.6764444805);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (36, 76.403212202, 15.6306910494, '1663431265000', -14.3971468209, -26.4581365031, 20, 4.8944987215, -0.4998520084, -2.974877147, 108.4277014693, -38.0945660506, -33.7719350842);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (37, 69.9417654258, 61.9813736276, '1670181357000', 40.4609375614, 12.3599683202, 2, -2.9398642163, 1.6796686173, -3.4631441167, -4.7097233361, 44.9492534476, -176.7315195376);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (38, 32.8532555003, 15.974639622, '1659033453000', 60.814680126, -1.9035116471, 11, -3.0118779941, -4.2863326457, -3.0044889347, 166.3296079225, 54.0883167598, -176.1266802281);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (39, 73.9623010097, 32.4225350797, '1664526293000', -80.6471022722, -85.9101303434, 19, -3.6486024823, 2.243144565, 4.7705526945, -98.5171689717, 47.5721998519, -37.1587731394);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (40, 46.8975068938, 9.1257449841, '1645678246000', 19.5189193359, -65.7541286063, 20, -3.1419459631, 2.9655447009, -2.1505886581, 150.4973689555, 112.0209277182, -183.5607458904);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (41, 94.9361350232, 74.694034158, '1661291060000', -4.8882611208, -89.5356954025, 2, -1.7956423011, -4.6904648679, -1.3280250759, 118.742243649, -73.5202899381, 191.0413981436);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (42, 42.232661342, 58.431468218, '1657765533000', 2.1129705194, -48.4366631362, 17, 4.1598627646, 3.3061998872, -4.3225211831, -3.8606058459, 111.4358085607, 49.1691930353);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (43, 40.3106604363, 30.5207184448, '1647631392000', 59.748444001, 37.3522553664, 15, 4.0147034753, -0.6325971719, -0.7297136124, -10.1984416991, 37.2838802348, 6.532310426);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (44, 28.4445249852, 18.6653282014, '1637426549000', -54.8223527905, 4.3889623465, 22, -1.5392035843, 4.1113955177, -4.4279728886, 126.1643004699, 127.9489254651, -85.3405485124);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (45, 13.3552643572, 34.1182909202, '1645646673000', -9.4263475686, -92.7644534307, 1, 2.5817556822, 3.6679435943, -1.2726204149, -77.510212882, -95.5055656435, -118.6801501979);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (46, 47.3951577276, 79.1150962461, '1658231295000', -87.4913589422, -45.3430715848, 11, -2.3372659986, -3.3009114491, -3.373974034, 100.4650666167, 118.2894201376, 191.6377886472);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (47, 80.3785461485, 42.2319415579, '1639122928000', -72.9830843691, -15.7342118144, 13, -4.5321872705, 2.0394270614, -2.2567924737, 176.2113249393, 194.6447118312, 174.8615506101);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (48, 81.2450472736, 97.7989291818, '1656717106000', -75.5271331216, -66.7436882886, 15, 2.5984342467, 2.9185200624, 4.1417689388, -25.9474032335, 147.7747667404, -137.2709899582);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (49, 92.9100137371, 45.5359155451, '1656521175000', 48.8114135536, 38.2122185395, 22, -1.2365465989, -1.0061919158, -3.1239308109, -13.6065078466, 29.0722340674, 54.1959222391);
insert into GPS (GPSID, VerticalAccuracy, HorizontalAccuracy, TimeStamp, Latitude, Longitude, NumberOfSatellites, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (50, 30.5077524609, 43.7264033441, '1661842893000', 39.4385183066, 77.1938333075, 17, -0.0756083927, 1.5157353018, 2.0982304901, 148.9888463547, 150.8699607942, 152.7024723571);


insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 87, 10741, 'GLL', 225);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 67, 3809, 'GSA', 424);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 86, 8254, 'GLL', 97);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 95, 14110, 'GGA', 400);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('543w', 32, 3349, 'GSA', 6);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 79, 4083, 'GSV', 102);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 71, 3169, 'GLL', 257);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 89, 1562, 'GSV', 330);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 48, 13760, 'GGA', 242);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 42, 10087, 'GSV', 395);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 72, 13622, 'GSA', 440);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('543w', 99, 13477, 'GSV', 380);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('543w', 0, 11747, 'GLL', 184);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 14, 5251, 'GGA', 149);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 100, 13135, 'GSV', 311);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 77, 11514, 'GGA', 165);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 47, 4689, 'GGA', 269);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 50, 4254, 'GSV', 201);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('78rn', 82, 2072, 'GSA', 213);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 19, 5947, 'GSA', 142);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('78rn', 49, 10015, 'GGA', 221);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('78rn', 3, 10896, 'GGA', 74);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 6, 6855, 'GLL', 33);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 66, 9204, 'GSA', 221);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 93, 8749, 'GGA', 156);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 76, 6265, 'GSA', 131);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 57, 9438, 'GSA', 402);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 10, 8048, 'GGA', 66);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 79, 10951, 'GSA', 324);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 1, 10723, 'GSA', 96);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 78, 11799, 'GSA', 49);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 21, 10087, 'GSV', 244);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 10, 3310, 'GGA', 67);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 64, 5875, 'GGA', 245);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 59, 6883, 'GLL', 87);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('678ntfy', 59, 13129, 'GSA', 35);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 98, 7073, 'GSV', 159);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('543w', 68, 3516, 'GSA', 427);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('543w', 18, 7174, 'GSA', 339);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 75, 6441, 'GGA', 390);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 45, 8691, 'GSA', 156);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 46, 8039, 'GSV', 389);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('78rn', 46, 11753, 'GLL', 20);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('78rn', 3, 4292, 'GSV', 444);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('543w', 49, 12314, 'GLL', 308);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 57, 7063, 'GGA', 88);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 37, 2503, 'GSV', 129);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fwe', 3, 11504, 'GSV', 203);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('234fw', 7, 2513, 'GGA', 243);
insert into GPS_ExternalParameters (GPSPartNumber, Gain, Frequency, NMEAOutputMessageType, BaudRate) values ('3qe', 55, 2020, 'GLL', 370);


insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (1, -3.3411557173, -1.3949462094, 2.3459001725, 1.916308817, 7.6520086714, -3.9887011217, '1654745639000', 4.1243524154, -1.5653380745, -4.6358421907, -101.4926752212, 3.7203769127, -4.1440530126);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (2, 0.477102428, -4.7770702407, 3.0817513119, 5.1758951034, 1.3623759741, -8.7911781275, '1667031998000', -4.4669735071, -2.8181248461, -4.5569685433, 68.485218736, 77.3979010954, 24.5048395302);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (3, -1.1663595822, -4.256070645, -0.3669373974, -9.3205635849, 1.5509645659, -9.9987484269, '1665063725000', 4.4757271104, -3.6172881797, -3.9580841308, -57.2695491791, -151.9142547692, -44.4221327205);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (4, -1.1846185996, 1.0160085333, 1.4177592489, -9.4914065447, -1.1669173177, 4.3399843053, '1646700181000', 2.2347345558, 2.7395391015, 2.5237685326, -44.9641416757, -44.2843774427, 65.4027788028);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (5, -3.6229813194, 1.8455049991, 2.4312909392, -8.3362956885, -5.3065615328, 2.1405318578, '1649194007000', -3.1098753916, 4.7165495249, -3.5199385202, 85.5319238577, -188.6718747289, -173.1548223235);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (6, -1.4013167758, -2.2486952799, -2.7992321004, 8.565204982, 0.7581406512, -5.7362827905, '1650542492000', -3.5242684506, -0.1985508893, 3.4751903192, 136.5814433045, -11.4252734941, 74.1562880896);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (7, -1.8054900917, 1.7794108776, -1.100689573, 7.1676405639, -3.7375443455, -0.1770368894, '1655073578000', -1.3509009075, -0.3277219366, 4.9768494789, -51.0467233053, 125.4126485304, 77.3334471424);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (8, -4.2574975831, -0.8483926891, 0.5327816221, -7.7938211092, 6.8940638541, 5.5034833201, '1664849654000', -0.0923346124, -4.1723188031, -0.286171584, 50.261747405, -130.6183495645, -156.9844885526);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (9, -1.2010906707, -4.4194027632, -2.4973293626, 5.8664548981, 0.424445955, 5.3313340401, '1647634217000', 2.825052518, 0.7661971109, 3.8328638966, 43.3707905679, -88.9363805874, -98.1982828637);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (10, -0.2904107018, -3.3556797414, -0.7120869337, -4.2316286133, -9.3167411842, -6.5956081236, '1638577124000', -3.1427679194, 4.0460918527, -0.3354806995, -141.7331589687, 32.7002641404, 25.9007954884);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (11, 0.5492295973, -1.0110568876, -3.7537894417, -5.2570467834, 3.2722578392, -7.8960743803, '1648825310000', -2.0506611231, 2.8003563796, 3.4451360573, -163.8395938516, -10.8761619081, 4.4454667338);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (12, 0.8695446036, -3.0381045611, -4.1438190586, -8.9162351344, -5.7119767271, -7.8880747865, '1666126359000', -1.1510556663, -1.0784564884, 2.6725117764, 120.2124922166, 117.2721776356, 17.3998569998);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (13, -0.0634809853, -1.4447169427, 1.4392086072, 5.8308541041, -2.1345030826, 7.2655845029, '1641005226000', -3.5086449339, -1.5555161542, -2.233488596, 174.8844193979, -111.5589984615, 46.2103376668);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (14, 2.690489194, -1.3151933675, -2.8032179091, 0.3519013378, 6.7708584697, 8.1927019207, '1660599676000', -2.2180500125, -3.9238897688, 4.4242816535, 140.5623732849, -95.0805757228, -104.1444971758);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (15, 3.1198616681, 3.1970860584, 0.9752432157, -2.8530563792, 9.7675309186, 0.938318096, '1637776489000', -0.5897841283, -4.8095008238, 2.2720114052, 38.1560297245, 55.3782477036, 86.2795281185);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (16, -2.3940581578, 0.6787741839, -1.0485947894, 4.104799524, -7.8941874361, -0.1224337737, '1670521622000', 0.6922575951, 1.1966724933, -2.0157344686, 40.2959576494, -182.9781509615, 130.8971642804);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (17, 2.8146198848, -4.5947974853, -0.9827284034, 7.7925256344, -0.1969780472, -1.0056115867, '1643893348000', -3.0062085952, -2.9448304144, -4.6509948668, 140.1413704331, 185.1569125815, 0.1051172888);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (18, 3.1771719002, 3.5754688636, -0.6870059484, -5.0489255327, 7.9484992386, -8.1005818009, '1655489114000', 4.377871579, 0.0747912741, 4.0612037041, 2.4222013274, 174.3450957036, -168.5709464339);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (19, 1.6408179156, 4.8930830039, 2.9686544791, 6.2390348533, -0.3611631174, 4.3224608209, '1661557814000', -4.1721656563, 2.484968434, -2.4190025579, 28.4646916349, 106.9671412864, 85.5289174254);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (20, -0.071776778, 4.9597239758, 3.8592132003, 5.2749015329, -3.3203897056, 8.5318636463, '1649567108000', -4.6187580187, -3.2990545262, 0.3799087928, -52.1731685993, 150.9914540685, 100.1922973744);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (21, -2.2641508991, 1.119292773, -3.3656901828, 4.1390649808, -7.5906645197, 4.484767212, '1647044076000', 3.9310330552, -3.4093701663, 2.0682712645, -80.7599671297, 44.9470802887, 48.6271561478);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (22, -2.3312033543, -4.3275323892, 3.9153698594, 8.7959484798, -9.6540109172, -8.2325437259, '1657728441000', 4.3928560353, 3.373469402, -2.3031938543, 171.0772212462, -96.600807651, 147.5314616048);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (23, 1.0745025248, -2.7507031799, -1.3296475044, 9.5338278689, 8.0467947146, -4.1439566531, '1660831071000', -0.9264910073, -3.3799308505, -4.7648064204, 42.8464552513, -114.2036238118, -26.0797133039);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (24, -1.7083327102, -3.5038857551, 3.0653426379, -6.1085845228, -9.7163808061, -6.1482005047, '1651645607000', -3.8942987115, -2.4653247291, 4.8478754103, -95.9243366965, -73.8752042589, -93.113022796);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (25, 4.1028221806, 1.3106077743, 0.8018386386, -2.332073708, 9.4893561075, -5.2414925041, '1670702422000', -2.382599192, 3.6272767332, -2.8214726588, -60.0119030661, -17.5982547934, 159.0754695318);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (26, 1.8651597393, 0.3394843851, -0.9191619189, 2.8578144079, 5.8437578083, -4.0635286412, '1667035656000', 2.2404798888, 3.747561578, -1.3555049022, 50.1309983589, -159.4781711378, -60.1327468209);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (27, -2.2674276621, -0.7489996077, -2.2164229115, 2.4183525993, -2.9854138372, -3.7231202384, '1652217371000', -4.0853914451, 4.3277472373, 1.6559480533, 178.2001185952, -80.9995714043, -62.7758937339);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (28, -4.9987654447, 4.3707604296, -1.5029715841, 2.5389706503, 0.0985406921, -8.6851019152, '1667417986000', 2.5592181509, 1.6485745363, 3.2713551348, 130.2253202506, -62.2513511444, -171.2786373862);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (29, 0.9331519604, -1.3103415429, -3.8751185327, 3.0871762653, 4.1928197701, 3.2442402255, '1638898877000', -3.601422035, 2.636342581, -0.5152052029, -160.9429859472, 134.5885462305, -4.3585986215);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (30, 3.7406207152, -4.9580883814, -1.8914784309, 4.1688507326, 1.035694877, -6.4707427447, '1659352236000', 3.4372101464, 4.0851600884, -2.6861031575, -24.1799267169, -28.9014352258, 32.2912775053);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (31, -0.7802142115, -3.9526159062, 1.8340121414, 2.9101355466, 3.5799174121, -1.7293985216, '1646245036000', -0.3300207372, 3.4018741325, 3.2872456262, -176.2690281714, -83.0251834706, 59.3014788195);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (32, -0.2829505983, 0.4714547956, -1.2827200528, -8.7372001198, 1.1704227442, 9.4220536306, '1664296561000', 3.9039775045, 1.1168745485, -2.2077561643, -123.6071801095, 103.7197236924, 180.846852371);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (33, 4.3528253198, -3.5260913486, 2.6636120081, 9.3801124673, 0.824806924, 7.7888577247, '1646032027000', 3.443349642, 2.8692678294, -4.4683383879, 49.1509327246, -16.3383236826, 55.5476090881);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (34, 3.4569783672, 0.4593212807, -1.5402728034, 0.5109675413, 7.9873319535, -6.1253410866, '1653637860000', -4.4808336953, -4.1449404599, 0.8387059597, -5.7565268654, -39.1639258553, 49.3387966947);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (35, -1.9163253019, 1.9604970564, 0.9570857467, 0.4645114559, 2.1623175201, -6.7197356218, '1658144811000', -1.4028998875, -3.2982880943, -3.6483703614, -81.6718652938, -121.0793650122, 65.9499732157);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (36, -4.4102687558, 4.2691778169, 0.0948485881, 9.7332946767, 6.0891560504, -4.6599554392, '1664096060000', -0.7404495217, 3.6308150275, -1.3295592819, -132.9633037222, -178.4288033323, -91.699746818);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (37, -0.7497991388, 4.2252258364, -4.9063531458, -4.6229671676, 9.8797549743, 4.850802163, '1670008667000', -3.9206777957, -1.4597241761, -4.9668501015, 152.6469820842, 134.9421748012, -89.0327006308);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (38, 4.8297291803, 0.0353721383, -0.5092571054, 7.4292640068, 5.9275772281, -0.3361888221, '1669818462000', -3.9084631141, 3.1911970869, 3.2042540433, 194.6138221641, -96.9680131764, 103.8763661552);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (39, 1.5527745236, -2.3255973513, 0.0373291032, -4.1234697166, -4.2229266887, 5.168857769, '1665207322000', 0.8994135428, 0.7539780901, 0.5192326393, 36.5374886843, -80.6761282804, 75.4018967207);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (40, 4.718237855, 4.1868754348, 0.3245722068, -9.0654857339, 7.8206621777, 5.8183012915, '1647329720000', -1.9157565798, 2.8896028059, 0.2053685426, -94.548336525, 190.2853057785, -127.429329637);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (41, -2.9240286477, -1.7086277927, 4.6376419587, -8.798652777, -8.8664680743, -4.5836146886, '1661382737000', 3.0015179821, 1.2932933931, 4.3327807866, -22.4987623107, 52.4189776267, 78.1551231978);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (42, 1.8648657706, -3.8088667601, 2.4744767456, -8.0241109982, -7.8154985106, 5.2351382873, '1660589667000', 1.8298642799, 1.0869865274, -3.3605374754, -46.3644864117, -173.127867696, -133.6688248288);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (43, 2.0019152784, 2.8580341671, 4.7328926723, 8.9866977514, -9.9466939729, 5.0203470625, '1644174607000', -1.2874989715, 2.6454697226, 1.4676962597, -37.6560356301, -105.3808917097, -15.8106588057);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (44, 0.4323869483, -3.2453179391, 1.428410038, -0.8182654209, 4.8047189432, 4.1404460767, '1657635388000', -1.8114286159, 1.0566956022, 0.745821114, -74.6063056061, -53.2150978647, -12.5663911995);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (45, 1.1044902328, -2.4700748811, -3.3755939908, 6.5711333593, -7.9931157815, 6.6708682792, '1661443003000', 3.814241756, -1.9540828253, -0.6387388141, 172.7438898504, 170.5271009395, -71.3264708714);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (46, -0.1109500564, 4.9201992799, -4.9686520445, -1.0644142707, 3.6282563407, 7.2130685336, '1658325719000', -0.2982514571, 0.5491157432, -2.2348000131, -157.3359385581, -131.4339878626, -9.0852823147);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (47, -4.5654145902, 0.2696703482, 1.410831153, -3.8582269679, 0.3972401614, -6.6070289674, '1656399218000', -3.8798069531, -2.0978855774, -3.7130470184, -76.0777313391, 163.0628780292, -7.1426264818);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (48, 3.3768601638, 2.4715234793, 3.4051688315, -7.5714314051, -1.1146309201, -5.57873339, '1662393620000', -1.8352083176, -2.1018452686, 4.2884060827, 40.6629681376, 111.3668891135, -193.6663079317);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (49, 0.3377025973, 2.7067041115, -1.274878804, -1.7453683866, -8.0647979109, 0.4428959433, '1647909712000', 2.8548474696, -1.7463697528, -1.4186813726, -139.3054356282, -53.1325457958, -92.8108696278);
insert into InertialMeasurementUnit (IMU_ID, AngularVelocityX, AngularVelocityY, AngularVelocityZ, IMU_X_Acceleration, IMU_Y_Acceleration, IMU_Z_Acceleration, TimeStamp, InternalVehicleLocation_Yaw, InternalVehicleLocation_Pitch, InternalVehicleLocation_Roll, InternalVehicleLocation_X, InternalVehicleLocation_Y, InternalVehicleLocation_Z) values (50, -1.6492007011, -1.5011259154, 3.9267537948, 1.3025969426, -0.4333728512, 4.8431065497, '1651357614000', -3.3627667002, -4.6593542674, -4.4287692779, 167.8080045023, 143.9506698614, 150.3548956744);

insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 52, 31, 62.9935156306, 48);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 46, 34, 34.7013574723, 42);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 48, 30, 63.7694543919, 49);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 50, 33, 80.6859855788, 44);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('74yw', 53, 32, 61.919175794, 41);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 49, 33, 44.6466372887, 41);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 54, 34, 51.9630888713, 49);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 52, 31, 57.80184897, 40);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 55, 32, 58.4223619795, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 51, 31, 37.8277706602, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 47, 33, 62.8015658586, 42);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 45, 32, 39.908464696, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 52, 32, 11.2407669087, 49);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 51, 32, 80.4423833145, 40);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 44, 34, 43.1402967962, 41);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 48, 33, 54.0145475591, 45);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 51, 32, 93.6358676808, 48);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 40, 30, 97.7867417112, 50);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 43, 35, 61.64661006, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 45, 33, 53.9730265587, 50);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 52, 32, 72.9508079531, 47);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('74yw', 41, 33, 58.0752505431, 46);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 53, 31, 24.5398580071, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 44, 35, 10.5876204396, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 55, 31, 87.9999274075, 42);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 48, 30, 13.727049393, 42);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('74yw', 42, 32, 90.6359468856, 41);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 41, 32, 40.6876111995, 44);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 53, 31, 37.3171147935, 47);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 55, 35, 27.3917891344, 48);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 49, 30, 57.0710906635, 49);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('74yw', 47, 33, 77.8769111463, 46);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 52, 30, 23.1887400073, 48);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 49, 32, 38.4678359356, 41);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 48, 32, 25.2834989406, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 50, 35, 11.3758132381, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 46, 35, 54.1983965994, 50);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('c243q', 45, 34, 91.9541822851, 45);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 45, 35, 54.2730120821, 48);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 42, 34, 7.9396612721, 46);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 48, 34, 56.6542114844, 46);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('74yw', 49, 30, 78.8564126275, 49);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 44, 35, 27.8210131851, 47);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 45, 32, 36.9558459844, 43);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 40, 33, 12.3253445881, 48);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 41, 32, 3.6292235485, 42);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 50, 32, 49.7066083482, 50);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('34fr', 44, 33, 76.9528112701, 40);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('43q5', 52, 31, 89.3351614282, 47);
insert into InertialMeasurementUnit_ExternalParameters (IMUPartNumber, SampleRate, Noise, NoiseDensity, Bias) values ('45w6', 55, 33, 51.0296819209, 48);


insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (1, -0.8488921846, -3.9805578163, 3.811652919, -3982, -2199, 474);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (2, 3.4981510845, 4.8674540642, 4.9045441977, 205, -3240, 481);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (3, 2.8229727774, -1.0073483468, -3.0172615735, -1528, 5928, 483);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (4, 3.9023572982, 4.9140655494, 2.5402534909, 1408, -5707, 469);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (5, -0.1240839819, -1.6908025794, 0.8158871416, 2260, -7042, 451);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (6, 3.4690700293, -3.6471041586, 2.206999317, 6075, -4725, 464);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (7, 0.418162355, 1.5881077971, 0.8626901894, 2916, -7760, 477);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (8, 0.9053303062, -1.987702711, -3.3169785614, 6240, -6304, 475);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (9, 2.2977644237, 4.9012368726, -2.1620182137, 2279, 672, 467);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (10, 4.394471, -2.3043756606, -3.8838306515, 4043, 5656, 475);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (11, -2.6645063781, 3.8905284467, 0.1554089919, -3445, -8574, 452);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (12, -4.7143311774, -3.8762504149, 4.0343146817, -3194, 7061, 466);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (13, -2.5525064147, -3.6861452447, 0.933569799, -1929, -1407, 461);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (14, -1.4028798293, 3.7028570276, -4.4587252103, 1656, -4210, 467);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (15, -4.8003210691, 2.1576298819, -1.4187962077, 613, 4674, 467);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (16, 1.1342679652, 3.2127136245, -3.0457197512, 1945, -3087, 453);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (17, -4.0897640074, -0.8641877187, 0.3919387379, 3930, 3589, 485);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (18, -2.1343523847, -3.5745054553, -0.870895857, -8134, -6352, 493);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (19, 0.5531856874, -0.387696488, -3.7429368208, 7119, -6302, 461);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (20, 1.2990729586, 0.7466676766, 0.8359089668, -8446, -6298, 473);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (21, 1.9890384561, -2.8549590717, -3.9966946698, -9060, 4317, 484);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (22, 3.1733958684, -2.7558399331, -2.394340973, 2560, 5518, 489);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (23, 3.4087098004, 3.5448123679, 2.107443777, 2850, -5793, 465);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (24, -0.1720221282, -3.9044711259, 3.104734902, 6156, -4439, 470);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (25, -3.5691881189, -2.5571866223, -0.6772048284, -6799, 4114, 493);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (26, -4.7270211982, 3.096759497, 1.3317366155, 2084, 6596, 487);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (27, -2.8257015833, 0.5127278053, -0.4724316447, -8317, -5643, 490);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (28, -3.5815393784, -4.1337107027, 1.7636411032, -7370, -9032, 484);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (29, -1.4576512964, 2.5182896514, 3.722361963, -4583, 4026, 488);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (30, 1.7948154698, -4.0256703274, 1.3916939292, 5518, -524, 486);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (31, -2.3937570664, 0.5301883106, 1.0968731893, -1888, -1641, 489);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (32, -2.9472706927, -3.3519539816, 2.2598519632, -3477, 6891, 482);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (33, 4.7593596027, 4.8580116702, 3.8925104591, -638, 717, 451);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (34, -1.5223214388, 0.9444035113, 0.6325789735, -8979, 8523, 487);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (35, -4.600519167, -4.3890122057, 1.7647962303, -9959, -8940, 471);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (36, 0.5838640925, -0.1127437369, -4.5167932025, 3247, -3031, 450);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (37, 4.855117149, 1.1314706912, -1.9242146882, 4214, 9035, 470);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (38, -2.2944632229, 1.670423243, 4.6875584413, -845, 7118, 450);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (39, -4.9280657174, -4.2036982526, 3.8542602461, -1576, 5713, 455);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (40, -4.0117265188, -1.6749002281, -0.1182465219, 7809, 9227, 467);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (41, -4.3096796222, 2.0328906256, -4.3395840439, 3113, -7123, 453);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (42, 0.9940273161, -1.0851191481, 1.8242812434, -5662, 4429, 497);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (43, 0.1241047834, 0.86144354, -4.2922118264, -7194, -868, 467);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (44, 2.1620705892, 4.7873850986, 0.3886547882, -9677, -6777, 455);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (45, 3.2819727216, 2.9946548308, -0.6528359009, -584, -8947, 479);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (46, 1.6585624936, 0.7513487023, 0.5475908951, 3371, 7447, 478);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (47, 3.1787798588, 1.8081876036, 2.7637349596, 6215, 3946, 489);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (48, -4.9279243436, -4.7669982897, -2.0910145687, -1791, -2874, 452);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (49, 4.6225940858, 0.2654740846, 1.5343135272, 4364, -7583, 492);
insert into DerivedVehicleData (VehicleID, VehicleYaw, VehiclePitch, VehicleRoll, VehicleX, VehicleY, VehicleZ) values (50, -3.3566078982, 3.5796919576, -3.7388110565, -5648, -3782, 479);