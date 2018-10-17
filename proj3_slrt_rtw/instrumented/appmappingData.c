#include "slrtappmapping.h"
#include "./maps/proj3.map"



const AppMapInfo appInfo[] = 
{
	{ /* Idx 0, <proj3> */
		{ /* SignalMapInfo */
			proj3_BIOMAP,
			proj3_LBLMAP,
			proj3_SIDMAP,
			proj3_SBIO,
			proj3_SLBL,
			{0,32},
			31,
		},
		{ /* ParamMapInfo */
			proj3_PTIDSMAP,
			proj3_PTNAMESMAP,
			proj3_SPTMAP,
			{0,40},
			41,
		},
		"proj3",
		"",
		"proj3",
		2,
		proj3_dtmap,
	},
};
int getNumRef(void){
	 return(sizeof(appInfo) / sizeof(AppMapInfo));
}