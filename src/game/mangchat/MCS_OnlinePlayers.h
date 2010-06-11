/*
 * MangChat By |Death| And Cybrax, And continued by Xeross
 *
 * This Program Is Free Software; You Can Redistribute It And/Or Modify It Under The Terms
 * Of The GNU General Public License
 * Written and Developed by Cybrax. cybraxvd@gmail.com
 * |Death| <death@hell360.net>, Lice <lice@yeuxverts.net>, Dj_baby & Sanaell, Tase
 * Conversion to MangChat version 1.7.2 for Mangos 7252 by Shinzon <shinzon@wowgollum.com>
 * Continued by Xeross
 * With Help And Support From The MaNGOS Project Community.
 * PLEASE RETAIN THE COPYRIGHT OF THE AUTHORS.
 */
#ifndef _IRC_CLIENT_ONLINE
#define _IRC_CLIENT_ONLINE

#include "IRCClient.h"
#include "IRCCmd.h"

// the reason to run this command multithreaded
// is to be able to "spread" the output over irc
// for servers with high player count
// in order not to freeze the mangchat core with sleep
// a new thread is spawned it will output the player data
// evry "10 players" and pauzes to not spam irc
// in addition the command is locked so i cannot be used
// while active.

class mcs_OnlinePlayers : public ACE_Based::Runnable
{
    public:
        mcs_OnlinePlayers();
        mcs_OnlinePlayers(_CDATA *_CD);
        ~mcs_OnlinePlayers();
        void run();
    public:
        _CDATA *CD;
};

#endif
