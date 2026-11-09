#pragma once

#include <SDL3/SDL_events.h>

#include <cstddef>
#include <string>
#include <vector>

// Text being composed by an input method (Chinese pinyin and the like). The game draws it itself, in the field being
// typed into, so it shows in fullscreen and in captures of the game window, where the system's own window does not.
namespace ImeComposition
{
void handleEvent(const SDL_Event &event);
void clear();

// The text not yet committed (the pinyin), empty when nothing is being composed.
const std::string &text();
const std::vector<std::string> &candidates();
int selectedCandidate();

// "1.中 [2.种] 3.重 ...", the selected candidate bracketed; empty without candidates.
std::string candidateLine(size_t maxCount);

// What follows a field's typed text while it has focus: the composition, the "_" caret and, when asked, a short
// candidate list.
std::string caret(bool withCandidates = true);
}
