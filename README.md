# M66_OpenCPU_GS3_SDK_V2.5_VSCode
M66 OpenCPU SDK V2.5 Package with Additional Visual Studio Code Features!


## C Properties For VSCode intelliSense
There is a Special C configuration profile named "Quectel M66" with default path of CodeSourcery selected, no longer problem to detect libraries!


## Automatic Build Task
Just Press Ctrl+Shift+B Whenever you want to build and upload your program!


## Usage
Don't forget to install gcc compiler (Code Sourcery) first from here:
https://www.quectel.com/ProductDownload/M66_OpenCPU_SDK.html

1. Write Your Program in main.c, You can use "libraries" Folder to archive c Files
   and header Files also.
   
2. Press Ctrl+Shift+B, VSCode Automaticaly Make the project and if it succeeded,
   File Explorer Opens with QFlash.exe highlighted. You just press enter.
   
3. The path to build\gcc is saved on clipboard; In QFlash Press on "Load FW Files"
   and Paste path in addressBar, then select .cfg file.
   
4. Press "Start" and turn on your module.

