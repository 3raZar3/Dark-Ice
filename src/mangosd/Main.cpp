/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/// \addtogroup mangosd Mangos Daemon
/// @{
/// \file

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "Config/ConfigEnv.h"
#include "Log.h"
#include "Master.h"
#include "SystemConfig.h"
#include "revision.h"
#include "revision_nr.h"
#include <openssl/opensslv.h>
#include <openssl/crypto.h>
#include <ace/Version.h>

#ifdef WIN32
#include "ServiceWin32.h"
char serviceName[] = "mangosd";
char serviceLongName[] = "MaNGOS world service";
char serviceDescription[] = "Massive Network Game Object Server";
/*
 * -1 - not in service mode
 *  0 - stopped
 *  1 - running
 *  2 - paused
 */
int m_ServiceStatus = -1;
#endif

DatabaseType WorldDatabase;                                 ///< Accessor to the world database
DatabaseType CharacterDatabase;                             ///< Accessor to the character database
DatabaseType loginDatabase;                                 ///< Accessor to the realm/login database

uint32 realmID;                                             ///< Id of the realm

/// Print out the usage string for this program on the console.
void usage(const char *prog)
{
    sLog.outString("Usage: \n %s [<options>]\n"
        "    --version                print version and exist\n\r"
        "    -c config_file           use config_file as configuration file\n\r"
        #ifdef WIN32
        "    Running as service functions:\n\r"
        "    --service                run as service\n\r"
        "    -s install               install service\n\r"
        "    -s uninstall             uninstall service\n\r"
        #endif
        ,prog);
}

/// Launch the mangos server
extern int main(int argc, char **argv)
{
    // - Construct Memory Manager Instance
    MaNGOS::Singleton<MemoryManager>::Instance();

    //char *leak = new char[1000];                          // test leak detection

    ///- Command line parsing to get the configuration file name
    char const* cfg_file = _MANGOSD_CONFIG;
    int c=1;
    while( c < argc )
    {
        if( strcmp(argv[c],"-c") == 0)
        {
            if( ++c >= argc )
            {
                sLog.outError("Runtime-Error: -c option requires an input argument");
                usage(argv[0]);
                return 1;
            }
            else
                cfg_file = argv[c];
        }

        if( strcmp(argv[c],"--version") == 0)
        {
            printf("%s\n", _FULLVERSION(REVISION_DATE,REVISION_TIME,REVISION_NR,REVISION_ID));
            return 0;
        }

        #ifdef WIN32
        ////////////
        //Services//
        ////////////
        if( strcmp(argv[c],"-s") == 0)
        {
            if( ++c >= argc )
            {
                sLog.outError("Runtime-Error: -s option requires an input argument");
                usage(argv[0]);
                Log::WaitBeforeContinueIfNeed();
                return 1;
            }
            if( strcmp(argv[c],"install") == 0)
            {
                if (WinServiceInstall())
                    sLog.outString("Installing service");
                return 1;
            }
            else if( strcmp(argv[c],"uninstall") == 0)
            {
                if(WinServiceUninstall())
                    sLog.outString("Uninstalling service");
                return 1;
            }
            else
            {
                sLog.outError("Runtime-Error: unsupported option %s",argv[c]);
                usage(argv[0]);
                Log::WaitBeforeContinueIfNeed();
                return 1;
            }
        }
        if( strcmp(argv[c],"--service") == 0)
        {
            WinServiceRun();
        }
        ////
        #endif
        ++c;
    }

    if (!sConfig.SetSource(cfg_file))
    {
        sLog.outError("Could not find configuration file %s.", cfg_file);
        Log::WaitBeforeContinueIfNeed();
        return 1;
    }

    sLog.outString( "%s [world-daemon]", _FULLVERSION(REVISION_DATE,REVISION_TIME,REVISION_NR,REVISION_ID) );
    sLog.outString( "<Ctrl-C> to stop.\n\n" );

    sLog.outTitle( "XXXX'																	");
	sLog.outTitle( "XXXXX																	");
	sLog.outTitle( "IXXX																	");
    sLog.outTitle( "IXX																		");
    sLog.outTitle( "IXX.               XX													");
    sLog.outTitle( "IXX               iXXI													");
    sLog.outTitle( "IXX               xXX													");
    sLog.outTitle( "IXX               xXX													");
    sLog.outTitle( "IXX               xXX													");
    sLog.outTitle( "IXX               xXX													");
    sLog.outTitle( "IXX               xXX													");
    sLog.outTitle( "IXX               xXX               IXX'  IXX'							");
    sLog.outTitle( "IXXX              xXX               XX    XX							");
    sLog.outTitle( "IXXXXXXXXXXXXXXXXXXXX               XX    XX							");
    sLog.outTitle( "IXXXXXXXXXXXXXXXXXXXX               XX    XX							");
    sLog.outTitle( "IXXx              xXX               XX    XX							");
    sLog.outTitle( "IXX               xXX               IX    IX							");
    sLog.outTitle( "IXX               xXX               IX    IX							");
    sLog.outTitle( "IXX               xXX               IX    IX							");
    sLog.outTitle( "IXX               xXX     iXXXXX    IX    IX							");
    sLog.outTitle( "IXX               xXX    xXI   XI   iX    iX							");
    sLog.outTitle( "IXX               xXX   iXXXXXXXX   IX    IX							");
    sLog.outTitle( "IXX        XXXXXI xXX   XX          IX    IX							");
    sLog.outTitle( "IXX     IXXXXXXXI xXX   XX          IX    IX							");
    sLog.outTitle( "XXXi   xXXX    X  XXX   XX.         XX    XX							");
    sLog.outTitle( ".XXXx IXX         IXXXX   XXI        XX    XX  							");  
    sLog.outTitle( ".XXXX XX          'XX      IXXXXXXI .XXX' .XXX'  						");
    sLog.outTitle( "   iXX'                                       							");
    sLog.outTitle( "  IXX																	");
    sLog.outTitle( "  iXX.																	");
    sLog.outTitle( "    XXX																	");
    sLog.outTitle( "     iXXX                                       						");
    sLog.outTitle( "      iXXXI                                     						");
    sLog.outTitle( "       'XXXXX                                    						");
    sLog.outTitle( "          XXXX.															");
    sLog.outTitle( "           XXXX.														");
    sLog.outTitle( "             XXX             -Art made by Don -							");
    sLog.outTitle( "               xXX														");
    sLog.outTitle( "               XX														");
    sLog.outTitle( "              XXx                            XXXXXX     IX				");
    sLog.outTitle( "               XXx           XX                    XX   .XXXXXX  iXXXX	");
    sLog.outTitle( "               XXx    XXXXXX XX        XXXXX       'X.   IXX' IXXX   XX	");
    sLog.outTitle( "               XXi  XXI   XI IXXXXX  IXi  iXi      'X.  'XX    Xi    XX	");
    sLog.outTitle( "              IXX  IX        IXXI   .XXXXXXXXI     'X.   XX    Xi    IX ");
    sLog.outTitle( "              XX   Xi        IXI    II          IXXXXX   IX    Xi    IX	");
    sLog.outTitle( "             XX    Xi        IX     XI        .XX   Xi   IX    Xi    IX	");
    sLog.outTitle( "           IXXX    XX        IX     IX       .X'    Xi   iX    Xi    XX	");
    sLog.outTitle( "    XXXXXXXX        IXX      IX     .XXI      XI    Xi   XX    Xi    Xi	");
    sLog.outTitle( "     XXXX'            XXXXX' XX.      IXXXXXI IXXXXXXi   XX.  IXf   XX'	");
    sLog.outTitle( "                                                iXX             IXX		");
    sLog.outTitle( "                                                IXI						");
	sLog.outTitle( "GIT: Github.com/Hellscream/Core											");
	sLog.outTitle( "Hellscreamcore, the core brought to you straight from hell				");
	sLog.outString("Running on Revision %s.", cfg_file);
	printf("%s\n", _FULLVERSION(REVISION_DATE,REVISION_TIME,REVISION_NR,REVISION_ID));

    DETAIL_LOG("%s (Library: %s)", OPENSSL_VERSION_TEXT, SSLeay_version(SSLEAY_VERSION));
    if (SSLeay() < 0x009080bfL )
    {
        DETAIL_LOG("WARNING: Outdated version of OpenSSL lib. Logins to server may not work!");
        DETAIL_LOG("WARNING: Minimal required version [OpenSSL 0.9.8k]");
    }

    DETAIL_LOG("Using ACE: %s", ACE_VERSION);

    ///- and run the 'Master'
    /// \todo Why do we need this 'Master'? Can't all of this be in the Main as for Realmd?
    return sMaster.Run();

    // at sMaster return function exist with codes
    // 0 - normal shutdown
    // 1 - shutdown at error
    // 2 - restart command used, this code can be used by restarter for restart mangosd
}

/// @}
