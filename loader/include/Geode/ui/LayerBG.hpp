#pragma once

#include <Geode/DefaultInclude.hpp>
#include <cocos2d.h>

namespace geode {
    /**
     * Creates the usual blue gradient BG for a layer. You should use this over 
     * creating the sprite manually, as in the future we may provide texture 
     * packs the ability to override this function.
     */
    GEODE_DLL cocos2d::CCSprite* createLayerBG();
}
