#!/bin/sh
# Copyright (c) 2009 The Open Source Geospatial Foundation.
# Copyright (c) 2009 LISAsoft
# Copyright (c) 2009 Cameron Shorter
# Licensed under the GNU LGPL.
# 
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This library is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".

# About:
# =====
# This script will load Windows Installers for selected projects

# Running:
# =======
# cd ${CD}/win
# sudo ./load_win_installers.sh

# Requires: nothing

#Add the files to the directory where remastersys wants them
#TMP="/tmp/build_win_installers"
TMP="/tmp/remastersys/ISOTMP/WindowsInstallers"
mkdir -p $TMP
cd $TMP

echo "OSGeo software for Windows:  http://trac.osgeo.org/osgeo4w/" > README.txt

for URL in \
  http://home.gdal.org/fwtools/FWTools243.exe \
  http://downloads.sourceforge.net/project/geonetwork/GeoNetwork_opensource/v2.4.2/geonetwork-install-2.4.2-0.exe?use_mirror=transact \
  http://downloads.sourceforge.net/geoserver/geoserver-2.0.1-ng.exe?use_mirror=transact \
  http://forge.osor.eu/frs/download.php/746/gvSIG-1_9-windows-i586-withjre.exe \
  http://udig.refractions.net/files/downloads/udig-1.1.1.exe \
  http://linfiniti.com/downloads/QGIS-1.4.0-1-No-GrassSetup.exe \
  http://home.gdal.org/tmp/vcredist_x86.exe \
  http://download.osgeo.org/livedvd/data/grass/WinGRASS-6.4.SVN-r41454-1-Setup.exe \
  http://maptools.org/dl/ms4w/ms4w_3.0_beta7.zip \
  http://download.osgeo.org/mapguide/releases/2.0.2/MgServerSetup-2.0.2.3011.exe \
  http://maptiler.googlecode.com/files/maptiler-1.0-beta2-setup.exe \
  http://www.gpsbabel.org/plan9.php?dl=gpsbabel-1.3.6.zip \
  http://gpsvp.googlecode.com/files/gpsVPxp_0.4.18.zip \
  http://www.opengis.es/descargas/Kosmo_Desktop_2.0-RC1_windows_jre.zip \
  http://downloads.sourceforge.net/project/opencpn/opencpn/1.3.6/OpenCPN_136_Setup.exe?use_mirror=transact \
  http://download.osgeo.org/ossim/installers/windows/ossimplanet-installer-1.8.4.exe \
; do
  wget -c --progress=dot:mega "${URL}"
done;

#FIXME:
\mv "plan9.php?dl=gpsbabel-1.3.6.zip" gpsbabel-1.3.6.zip


  # FWTools
  # geonetwork
  # geoserver
  # gvSIG
  # ms4w
  # QGIS
  # udig
  # WinGRASS
  # MapGuide Open Source
  # MapTiler
  # GpsBabel + GUI (1.2mb)
  # gpsVP: (500kb)  http://code.google.com/p/gpsvp/
  # Kosmo
  # OpenCPN (8mb)
  # Ossim (30mb)

