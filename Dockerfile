FROM microsoft/windowsservercore
MAINTAINER JinHwan_Woo(jhwoo@korgps.com)
LABEL "purpose"="practice"
RUN powershell Add-WindowsFeature Web-Server,Web-Asp-Net45
RUN powershell New-Item -Type File -Path C:\inetpub\wwwroot\Default.htm
RUN powershell Add-Content -Path c:\inetpub\wwwroot\Default.htm -Value \"Hello World!\"
WORKDIR c:\\inetpub\\wwwroot
CMD ["powershell"]
