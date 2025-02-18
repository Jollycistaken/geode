#include "../crashlog.hpp"

#ifdef GEODE_IS_MACOS

#include "../../../../filesystem/fs/filesystem.hpp"
#include <Foundation/Foundation.h>

bool crashlog::setupPlatformHandler() {
    return true;
}

bool crashlog::didLastLaunchCrash() {
    return false;
}

std::string crashlog::getCrashLogDirectory() {
    std::array<char, 1024> path;
    CFStringGetCString((CFStringRef)NSHomeDirectory(), path.data(), path.size(), kCFStringEncodingUTF8);
    auto crashlogDir = ghc::filesystem::path(path.data()) / "Library" / "Logs" / "DiagnosticReports";
    return crashlogDir.string();
}

#endif