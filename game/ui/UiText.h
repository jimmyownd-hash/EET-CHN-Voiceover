#pragma once

#include <string>

namespace OpenYAMM::Engine
{
class AssetFileSystem;
}

// Text translation overlay. The game composes much of its interface text in code, so translation happens where text
// is measured and drawn: a string that matches an entry of data_tables/english/ui_text.txt is replaced by its
// translation. Without that file every call returns its input, so the English game is unchanged.
//
// Entry formats (one per line, "key<TAB>value", '#' starts a comment, a literal \n is a line break):
//   - plain key: replaces a whole string.
//   - key ending in '*': replaces a leading part of a string; the rest is translated in turn.
//   - key holding {name} placeholders: matches composed text such as "{points} bonus points left"; each {name} in
//     the value is replaced by the matched part, itself translated.
namespace UiText
{
void load(const OpenYAMM::Engine::AssetFileSystem &assetFileSystem);

bool hasOverrides();

// The translation of text, or text itself when there is none. Safe to call every frame: results are cached.
std::string translate(const std::string &text);
}
