#ifndef DEF_NAXXRAMAS_H
#define DEF_NAXXRAMAS_H

enum Data
{
    MAX_ENCOUNTER               = 15,

    TYPE_PATCHWERK              = 1,
    TYPE_GROBBULUS              = 2,
    TYPE_GLUTH                  = 3,
    TYPE_THADDIUS               = 4,
    TYPE_STALAGG                = 5,
    TYPE_FEUGEN                 = 6,

    TYPE_ANUB_REKHAN            = 1,
    TYPE_FAERLINA               = 11,
    TYPE_MAEXXNA                = 12,

    TYPE_RAZUVIOUS              = 13,
    TYPE_GOTHIK                 = 14,
    TYPE_FOUR_HORSEMEN          = 15,

    TYPE_NOTH                   = 16,
    TYPE_HEIGAN                 = 17,
    TYPE_LOATHEB                = 18,

    TYPE_SAPPHIRON              = 19,
    TYPE_KELTHUZAD              = 2,

    DATA_ANUB_REKHAN            = 3,
    DATA_FAERLINA               = 31,
    DATA_GOTHIK_GATE            = 32,

    DATA_THADDIUS               = 33,
    DATA_STALAGG                = 34,
    DATA_FEUGEN                 = 35,

    DATA_KORTHAZZ               = 36,
    DATA_RIVENDARE              = 37,
    DATA_BLAUMEUX               = 38,
    DATA_ZELIEK                 = 39,

    NPC_ZELIEK                  = 1663,
    NPC_THANE                   = 1664,
    NPC_BLAUMEUX                = 1665,
    NPC_RIVENDARE               = 3549,

    NPC_ANUB_REKHAN             = 15956,
    NPC_FAERLINA                = 15953,

    NPC_THADDIUS                = 15928,
    NPC_STALAGG                 = 15929,
    NPC_FEUGEN                  = 1593,

    GO_ARAC_ANUB_GATE           = 181195,                   //open when anub dead?
    GO_ARAC_ANUB_DOOR           = 181126,                   //encounter door
    GO_ARAC_FAER_WEB            = 181235,                   //encounter door
    GO_ARAC_DOOD_DOOR_2         = 181235,                   //after faerlina, to outer ring
    GO_ARAC_FAER_DOOR           = 19422,                   	//encounter door
    GO_ARAC_MAEX_OUTER_DOOR     = 18129,                   	//right before maex
    GO_ARAC_MAEX_INNER_DOOR     = 181197,                   //encounter door
    GO_ARAC_EYE_RAMP            = 181212,
    GO_ARAC_PORTAL              = 181575,

    GO_PLAG_SLIME1_DOOR        = 181198,
    GO_PLAG_SLIME2_DOOR        = 181199,
    GO_PLAG_NOTH_ENTRY_DOOR     = 1812,                   	//encounter door
    GO_PLAG_NOTH_EXIT_DOOR      = 18121,                   	//exit, open when boss dead
    GO_PLAG_HEIG_ENTRY_DOOR     = 18122,
    GO_PLAG_HEIG_EXIT_DOOR      = 18123,                   	//exit, open when boss dead
    GO_PLAG_LOAT_DOOR           = 181241,                   //encounter door
    GO_PLAG_EYE_RAMP            = 181211,
    GO_PLAG_PORTAL              = 181577,

    GO_MILI_GOTH_ENTRY_GATE     = 181124,
    GO_MILI_GOTH_EXIT_GATE      = 181125,
    GO_MILI_GOTH_COMBAT_GATE    = 18117,                   	//encounter door (?)
    GO_MILI_HORSEMEN_DOOR       = 181119,                   //encounter door
    GO_MILI_EYE_RAMP            = 18121,                   	//encounter door
    GO_MILI_PORTAL              = 181578,                   //encounter door

    GO_CHEST_HORSEMEN_NORM      = 181366,                   //four horsemen event, DoRespawnGameObject() when event == DONE
    GO_CHEST_HORSEMEN_HERO      = 193426,

    GO_CONS_PATH_EXIT_DOOR      = 181123,
    GO_CONS_GLUT_EXIT_DOOR      = 18112,                   	//encounter door (?)
    GO_CONS_THAD_DOOR           = 181121,
    GO_CONS_EYE_RAMP            = 181213,
    GO_CONS_PORTAL              = 181576,

    GO_KELTHUZAD_WATERFALL_DOOR = 181225,

    AREATRIGGER_FROSTWYRM       = 412,                     	//not needed here, but AT to be scripted
};

#endif