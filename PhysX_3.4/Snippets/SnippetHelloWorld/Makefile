BINARY = $(patsubst %.cpp,%,$(wildcard *.cpp))

DEBUG_FLAG=-g -Werror -Wall -fPIC -fno-strict-aliasing -I ../../Include/ -I ../../../PxShared/include/ -DNDEBUG  \
        -L ../../Bin/linux64/ \
        -lPxFoundationDEBUG_x64 \
        -lPhysX3CommonDEBUG_x64 \
        -lPhysX3DEBUG_x64 \
        -lPhysX3CookingDEBUG_x64  \
        -lPhysX3PROFILE_x64 \
        -lPhysX3CommonPROFILE_x64 \
        -lPhysX3CharacterKinematicDEBUG_x64 \
        -L ../../Lib/linux64/ \
        -lLowLevel \
        -lPhysX3Extensions \
        -l PhysX3Vehicle \
        -l SceneQuery \
        -l SimulationController \
        -L ../../../PxShared/bin/linux64/ \
        -lPxFoundationDEBUG_x64 \
        -lPxPvdSDKDEBUG_x64 \
        -lPxFoundationPROFILE_x64 \
        -lPxPvdSDKPROFILE_x64 \
        -L ../../../PxShared/lib/linux64/ \
        -lPsFastXmlDEBUG \
        -lPxTaskDEBUG \
        -lpthread -ldl -rdynamic

RELEASE_FLAG = -Werror -Wall -fPIC -fno-strict-aliasing -I ../../Include/ -I ../../../PxShared/include/ -DNDEBUG  \
        -L ../../Bin/linux64/ \
        -lPxFoundation_x64 \
        -lPhysX3Common_x64 \
        -lPhysX3_x64 \
        -lPhysX3Cooking_x64  \
        -lPhysX3PROFILE_x64 \
        -lPhysX3CommonPROFILE_x64 \
        -lPhysX3CharacterKinematic_x64 \
        -L ../../Lib/linux64/ \
        -lLowLevel \
        -lPhysX3Extensions \
        -l PhysX3Vehicle \
        -l SceneQuery \
        -l SimulationController \
        -L ../../../PxShared/bin/linux64/ \
        -lPxFoundation_x64 \
        -lPxPvdSDK_x64 \
        -lPxFoundationPROFILE_x64 \
        -lPxPvdSDKPROFILE_x64 \
        -L ../../../PxShared/lib/linux64/ \
        -lPsFastXml \
        -lPxCudaContextManager \
        -lPxTask \
        -lpthread -ldl -rdynamic

#all:$BINARY)

all:SnippetHelloWorld.cpp
	g++ SnippetHelloWorld.cpp $(DEBUG_FLAG)

ldconfig:
	echo /src/PxShared/bin/linux64/ >> /etc/ld.so.conf 
	echo /src/PhysX_3.4/Bin/linux64/ >> /etc/ld.so.conf 
	ldconfig
	
run:
	./a.out
