#include "script_component.hpp"
#include "CfgEventHandlers.hpp"
#include "RscTitles.hpp"
#include "CWR_ChatWheel_Messages.hpp"
#include "CWR_ChatWheel_Tags.hpp"
#include "CWR_ChatWheel_VoiceLines.hpp"


class CfgPatches
{
    class ADDON
    {
        author = "DartRuffian";
        name = COMPONENT_NAME;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] =
        {
            QCLASS(Core)
        };
        units[] = {};
        weapons[] = {};
        VERSION_CONFIG;
    };
};