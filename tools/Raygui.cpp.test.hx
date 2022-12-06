
@:include("raygui.h")
@:native("GuiControlState")
/** todo - extract comments **/
extern enum abstract GuiControlState(Int) from Int to Int{
    @:native("GUI_STATE_NORMAL") var GUI_STATE_NORMAL;
    @:native("GUI_STATE_FOCUSED") var GUI_STATE_FOCUSED;
    @:native("GUI_STATE_PRESSED") var GUI_STATE_PRESSED;
    @:native("GUI_STATE_DISABLED") var GUI_STATE_DISABLED;
}

@:include("raygui.h")
@:native("GuiTextAlignment")
/** todo - extract comments **/
extern enum abstract GuiTextAlignment(Int) from Int to Int{
    @:native("GUI_TEXT_ALIGN_LEFT") var GUI_TEXT_ALIGN_LEFT;
    @:native("GUI_TEXT_ALIGN_CENTER") var GUI_TEXT_ALIGN_CENTER;
    @:native("GUI_TEXT_ALIGN_RIGHT") var GUI_TEXT_ALIGN_RIGHT;
}

@:include("raygui.h")
@:native("GuiControl")
/** todo - extract comments **/
extern enum abstract GuiControl(Int) from Int to Int{
    @:native("DEFAULT") var DEFAULT;
    @:native("LABEL") var LABEL;
    @:native("BUTTON") var BUTTON;
    @:native("TOGGLE") var TOGGLE;
    @:native("SLIDER") var SLIDER;
    @:native("PROGRESSBAR") var PROGRESSBAR;
    @:native("CHECKBOX") var CHECKBOX;
    @:native("COMBOBOX") var COMBOBOX;
    @:native("DROPDOWNBOX") var DROPDOWNBOX;
    @:native("TEXTBOX") var TEXTBOX;
    @:native("VALUEBOX") var VALUEBOX;
    @:native("SPINNER") var SPINNER;
    @:native("LISTVIEW") var LISTVIEW;
    @:native("COLORPICKER") var COLORPICKER;
    @:native("SCROLLBAR") var SCROLLBAR;
    @:native("STATUSBAR") var STATUSBAR;
}

@:include("raygui.h")
@:native("GuiControlProperty")
/** todo - extract comments **/
extern enum abstract GuiControlProperty(Int) from Int to Int{
    @:native("BORDER_COLOR_NORMAL") var BORDER_COLOR_NORMAL;
    @:native("BASE_COLOR_NORMAL") var BASE_COLOR_NORMAL;
    @:native("TEXT_COLOR_NORMAL") var TEXT_COLOR_NORMAL;
    @:native("BORDER_COLOR_FOCUSED") var BORDER_COLOR_FOCUSED;
    @:native("BASE_COLOR_FOCUSED") var BASE_COLOR_FOCUSED;
    @:native("TEXT_COLOR_FOCUSED") var TEXT_COLOR_FOCUSED;
    @:native("BORDER_COLOR_PRESSED") var BORDER_COLOR_PRESSED;
    @:native("BASE_COLOR_PRESSED") var BASE_COLOR_PRESSED;
    @:native("TEXT_COLOR_PRESSED") var TEXT_COLOR_PRESSED;
    @:native("BORDER_COLOR_DISABLED") var BORDER_COLOR_DISABLED;
    @:native("BASE_COLOR_DISABLED") var BASE_COLOR_DISABLED;
    @:native("TEXT_COLOR_DISABLED") var TEXT_COLOR_DISABLED;
    @:native("BORDER_WIDTH") var BORDER_WIDTH;
    @:native("TEXT_PADDING") var TEXT_PADDING;
    @:native("TEXT_ALIGNMENT") var TEXT_ALIGNMENT;
    @:native("RESERVED") var RESERVED;
}

@:include("raygui.h")
@:native("GuiDefaultProperty")
/** todo - extract comments **/
extern enum abstract GuiDefaultProperty(Int) from Int to Int{
    @:native("TEXT_SIZE") var TEXT_SIZE;
    @:native("TEXT_SPACING") var TEXT_SPACING;
    @:native("LINE_COLOR") var LINE_COLOR;
    @:native("BACKGROUND_COLOR") var BACKGROUND_COLOR;
}

@:include("raygui.h")
@:native("GuiToggleProperty")
/** todo - extract comments **/
extern enum abstract GuiToggleProperty(Int) from Int to Int{
    @:native("GROUP_PADDING") var GROUP_PADDING;
}

@:include("raygui.h")
@:native("GuiSliderProperty")
/** todo - extract comments **/
extern enum abstract GuiSliderProperty(Int) from Int to Int{
    @:native("SLIDER_WIDTH") var SLIDER_WIDTH;
    @:native("SLIDER_PADDING") var SLIDER_PADDING;
}

@:include("raygui.h")
@:native("GuiProgressBarProperty")
/** todo - extract comments **/
extern enum abstract GuiProgressBarProperty(Int) from Int to Int{
    @:native("PROGRESS_PADDING") var PROGRESS_PADDING;
}

@:include("raygui.h")
@:native("GuiCheckBoxProperty")
/** todo - extract comments **/
extern enum abstract GuiCheckBoxProperty(Int) from Int to Int{
    @:native("CHECK_PADDING") var CHECK_PADDING;
}

@:include("raygui.h")
@:native("GuiComboBoxProperty")
/** todo - extract comments **/
extern enum abstract GuiComboBoxProperty(Int) from Int to Int{
    @:native("COMBO_BUTTON_WIDTH") var COMBO_BUTTON_WIDTH;
    @:native("COMBO_BUTTON_PADDING") var COMBO_BUTTON_PADDING;
}

@:include("raygui.h")
@:native("GuiDropdownBoxProperty")
/** todo - extract comments **/
extern enum abstract GuiDropdownBoxProperty(Int) from Int to Int{
    @:native("ARROW_PADDING") var ARROW_PADDING;
    @:native("DROPDOWN_ITEMS_PADDING") var DROPDOWN_ITEMS_PADDING;
}

@:include("raygui.h")
@:native("GuiTextBoxProperty")
/** todo - extract comments **/
extern enum abstract GuiTextBoxProperty(Int) from Int to Int{
    @:native("TEXT_INNER_PADDING") var TEXT_INNER_PADDING;
    @:native("TEXT_LINES_PADDING") var TEXT_LINES_PADDING;
    @:native("COLOR_SELECTED_FG") var COLOR_SELECTED_FG;
    @:native("COLOR_SELECTED_BG") var COLOR_SELECTED_BG;
}

@:include("raygui.h")
@:native("GuiSpinnerProperty")
/** todo - extract comments **/
extern enum abstract GuiSpinnerProperty(Int) from Int to Int{
    @:native("SPIN_BUTTON_WIDTH") var SPIN_BUTTON_WIDTH;
    @:native("SPIN_BUTTON_PADDING") var SPIN_BUTTON_PADDING;
}

@:include("raygui.h")
@:native("GuiScrollBarProperty")
/** todo - extract comments **/
extern enum abstract GuiScrollBarProperty(Int) from Int to Int{
    @:native("ARROWS_SIZE") var ARROWS_SIZE;
    @:native("ARROWS_VISIBLE") var ARROWS_VISIBLE;
    @:native("SCROLL_SLIDER_PADDING") var SCROLL_SLIDER_PADDING;
    @:native("SCROLL_SLIDER_SIZE") var SCROLL_SLIDER_SIZE;
    @:native("SCROLL_PADDING") var SCROLL_PADDING;
    @:native("SCROLL_SPEED") var SCROLL_SPEED;
}

@:include("raygui.h")
@:native("GuiScrollBarSide")
/** todo - extract comments **/
extern enum abstract GuiScrollBarSide(Int) from Int to Int{
    @:native("SCROLLBAR_LEFT_SIDE") var SCROLLBAR_LEFT_SIDE;
    @:native("SCROLLBAR_RIGHT_SIDE") var SCROLLBAR_RIGHT_SIDE;
}

@:include("raygui.h")
@:native("GuiListViewProperty")
/** todo - extract comments **/
extern enum abstract GuiListViewProperty(Int) from Int to Int{
    @:native("LIST_ITEMS_HEIGHT") var LIST_ITEMS_HEIGHT;
    @:native("LIST_ITEMS_PADDING") var LIST_ITEMS_PADDING;
    @:native("SCROLLBAR_WIDTH") var SCROLLBAR_WIDTH;
    @:native("SCROLLBAR_SIDE") var SCROLLBAR_SIDE;
}

@:include("raygui.h")
@:native("GuiColorPickerProperty")
/** todo - extract comments **/
extern enum abstract GuiColorPickerProperty(Int) from Int to Int{
    @:native("COLOR_SELECTOR_SIZE") var COLOR_SELECTOR_SIZE;
    @:native("HUEBAR_WIDTH") var HUEBAR_WIDTH;
    @:native("HUEBAR_PADDING") var HUEBAR_PADDING;
    @:native("HUEBAR_SELECTOR_HEIGHT") var HUEBAR_SELECTOR_HEIGHT;
    @:native("HUEBAR_SELECTOR_OVERFLOW") var HUEBAR_SELECTOR_OVERFLOW;
}

@:include("raygui.h")
@:native("guiIconName")
/** todo - extract comments **/
extern enum abstract guiIconName(Int) from Int to Int{
    @:native("RICON_NONE") var RICON_NONE;
    @:native("RICON_FOLDER_FILE_OPEN") var RICON_FOLDER_FILE_OPEN;
    @:native("RICON_FILE_SAVE_CLASSIC") var RICON_FILE_SAVE_CLASSIC;
    @:native("RICON_FOLDER_OPEN") var RICON_FOLDER_OPEN;
    @:native("RICON_FOLDER_SAVE") var RICON_FOLDER_SAVE;
    @:native("RICON_FILE_OPEN") var RICON_FILE_OPEN;
    @:native("RICON_FILE_SAVE") var RICON_FILE_SAVE;
    @:native("RICON_FILE_EXPORT") var RICON_FILE_EXPORT;
    @:native("RICON_FILE_NEW") var RICON_FILE_NEW;
    @:native("RICON_FILE_DELETE") var RICON_FILE_DELETE;
    @:native("RICON_FILETYPE_TEXT") var RICON_FILETYPE_TEXT;
    @:native("RICON_FILETYPE_AUDIO") var RICON_FILETYPE_AUDIO;
    @:native("RICON_FILETYPE_IMAGE") var RICON_FILETYPE_IMAGE;
    @:native("RICON_FILETYPE_PLAY") var RICON_FILETYPE_PLAY;
    @:native("RICON_FILETYPE_VIDEO") var RICON_FILETYPE_VIDEO;
    @:native("RICON_FILETYPE_INFO") var RICON_FILETYPE_INFO;
    @:native("RICON_FILE_COPY") var RICON_FILE_COPY;
    @:native("RICON_FILE_CUT") var RICON_FILE_CUT;
    @:native("RICON_FILE_PASTE") var RICON_FILE_PASTE;
    @:native("RICON_CURSOR_HAND") var RICON_CURSOR_HAND;
    @:native("RICON_CURSOR_POINTER") var RICON_CURSOR_POINTER;
    @:native("RICON_CURSOR_CLASSIC") var RICON_CURSOR_CLASSIC;
    @:native("RICON_PENCIL") var RICON_PENCIL;
    @:native("RICON_PENCIL_BIG") var RICON_PENCIL_BIG;
    @:native("RICON_BRUSH_CLASSIC") var RICON_BRUSH_CLASSIC;
    @:native("RICON_BRUSH_PAINTER") var RICON_BRUSH_PAINTER;
    @:native("RICON_WATER_DROP") var RICON_WATER_DROP;
    @:native("RICON_COLOR_PICKER") var RICON_COLOR_PICKER;
    @:native("RICON_RUBBER") var RICON_RUBBER;
    @:native("RICON_COLOR_BUCKET") var RICON_COLOR_BUCKET;
    @:native("RICON_TEXT_T") var RICON_TEXT_T;
    @:native("RICON_TEXT_A") var RICON_TEXT_A;
    @:native("RICON_SCALE") var RICON_SCALE;
    @:native("RICON_RESIZE") var RICON_RESIZE;
    @:native("RICON_FILTER_POINT") var RICON_FILTER_POINT;
    @:native("RICON_FILTER_BILINEAR") var RICON_FILTER_BILINEAR;
    @:native("RICON_CROP") var RICON_CROP;
    @:native("RICON_CROP_ALPHA") var RICON_CROP_ALPHA;
    @:native("RICON_SQUARE_TOGGLE") var RICON_SQUARE_TOGGLE;
    @:native("RICON_SYMMETRY") var RICON_SYMMETRY;
    @:native("RICON_SYMMETRY_HORIZONTAL") var RICON_SYMMETRY_HORIZONTAL;
    @:native("RICON_SYMMETRY_VERTICAL") var RICON_SYMMETRY_VERTICAL;
    @:native("RICON_LENS") var RICON_LENS;
    @:native("RICON_LENS_BIG") var RICON_LENS_BIG;
    @:native("RICON_EYE_ON") var RICON_EYE_ON;
    @:native("RICON_EYE_OFF") var RICON_EYE_OFF;
    @:native("RICON_FILTER_TOP") var RICON_FILTER_TOP;
    @:native("RICON_FILTER") var RICON_FILTER;
    @:native("RICON_TARGET_POINT") var RICON_TARGET_POINT;
    @:native("RICON_TARGET_SMALL") var RICON_TARGET_SMALL;
    @:native("RICON_TARGET_BIG") var RICON_TARGET_BIG;
    @:native("RICON_TARGET_MOVE") var RICON_TARGET_MOVE;
    @:native("RICON_CURSOR_MOVE") var RICON_CURSOR_MOVE;
    @:native("RICON_CURSOR_SCALE") var RICON_CURSOR_SCALE;
    @:native("RICON_CURSOR_SCALE_RIGHT") var RICON_CURSOR_SCALE_RIGHT;
    @:native("RICON_CURSOR_SCALE_LEFT") var RICON_CURSOR_SCALE_LEFT;
    @:native("RICON_UNDO") var RICON_UNDO;
    @:native("RICON_REDO") var RICON_REDO;
    @:native("RICON_REREDO") var RICON_REREDO;
    @:native("RICON_MUTATE") var RICON_MUTATE;
    @:native("RICON_ROTATE") var RICON_ROTATE;
    @:native("RICON_REPEAT") var RICON_REPEAT;
    @:native("RICON_SHUFFLE") var RICON_SHUFFLE;
    @:native("RICON_EMPTYBOX") var RICON_EMPTYBOX;
    @:native("RICON_TARGET") var RICON_TARGET;
    @:native("RICON_TARGET_SMALL_FILL") var RICON_TARGET_SMALL_FILL;
    @:native("RICON_TARGET_BIG_FILL") var RICON_TARGET_BIG_FILL;
    @:native("RICON_TARGET_MOVE_FILL") var RICON_TARGET_MOVE_FILL;
    @:native("RICON_CURSOR_MOVE_FILL") var RICON_CURSOR_MOVE_FILL;
    @:native("RICON_CURSOR_SCALE_FILL") var RICON_CURSOR_SCALE_FILL;
    @:native("RICON_CURSOR_SCALE_RIGHT_FILL") var RICON_CURSOR_SCALE_RIGHT_FILL;
    @:native("RICON_CURSOR_SCALE_LEFT_FILL") var RICON_CURSOR_SCALE_LEFT_FILL;
    @:native("RICON_UNDO_FILL") var RICON_UNDO_FILL;
    @:native("RICON_REDO_FILL") var RICON_REDO_FILL;
    @:native("RICON_REREDO_FILL") var RICON_REREDO_FILL;
    @:native("RICON_MUTATE_FILL") var RICON_MUTATE_FILL;
    @:native("RICON_ROTATE_FILL") var RICON_ROTATE_FILL;
    @:native("RICON_REPEAT_FILL") var RICON_REPEAT_FILL;
    @:native("RICON_SHUFFLE_FILL") var RICON_SHUFFLE_FILL;
    @:native("RICON_EMPTYBOX_SMALL") var RICON_EMPTYBOX_SMALL;
    @:native("RICON_BOX") var RICON_BOX;
    @:native("RICON_BOX_TOP") var RICON_BOX_TOP;
    @:native("RICON_BOX_TOP_RIGHT") var RICON_BOX_TOP_RIGHT;
    @:native("RICON_BOX_RIGHT") var RICON_BOX_RIGHT;
    @:native("RICON_BOX_BOTTOM_RIGHT") var RICON_BOX_BOTTOM_RIGHT;
    @:native("RICON_BOX_BOTTOM") var RICON_BOX_BOTTOM;
    @:native("RICON_BOX_BOTTOM_LEFT") var RICON_BOX_BOTTOM_LEFT;
    @:native("RICON_BOX_LEFT") var RICON_BOX_LEFT;
    @:native("RICON_BOX_TOP_LEFT") var RICON_BOX_TOP_LEFT;
    @:native("RICON_BOX_CENTER") var RICON_BOX_CENTER;
    @:native("RICON_BOX_CIRCLE_MASK") var RICON_BOX_CIRCLE_MASK;
    @:native("RICON_POT") var RICON_POT;
    @:native("RICON_ALPHA_MULTIPLY") var RICON_ALPHA_MULTIPLY;
    @:native("RICON_ALPHA_CLEAR") var RICON_ALPHA_CLEAR;
    @:native("RICON_DITHERING") var RICON_DITHERING;
    @:native("RICON_MIPMAPS") var RICON_MIPMAPS;
    @:native("RICON_BOX_GRID") var RICON_BOX_GRID;
    @:native("RICON_GRID") var RICON_GRID;
    @:native("RICON_BOX_CORNERS_SMALL") var RICON_BOX_CORNERS_SMALL;
    @:native("RICON_BOX_CORNERS_BIG") var RICON_BOX_CORNERS_BIG;
    @:native("RICON_FOUR_BOXES") var RICON_FOUR_BOXES;
    @:native("RICON_GRID_FILL") var RICON_GRID_FILL;
    @:native("RICON_BOX_MULTISIZE") var RICON_BOX_MULTISIZE;
    @:native("RICON_ZOOM_SMALL") var RICON_ZOOM_SMALL;
    @:native("RICON_ZOOM_MEDIUM") var RICON_ZOOM_MEDIUM;
    @:native("RICON_ZOOM_BIG") var RICON_ZOOM_BIG;
    @:native("RICON_ZOOM_ALL") var RICON_ZOOM_ALL;
    @:native("RICON_ZOOM_CENTER") var RICON_ZOOM_CENTER;
    @:native("RICON_BOX_DOTS_SMALL") var RICON_BOX_DOTS_SMALL;
    @:native("RICON_BOX_DOTS_BIG") var RICON_BOX_DOTS_BIG;
    @:native("RICON_BOX_CONCENTRIC") var RICON_BOX_CONCENTRIC;
    @:native("RICON_BOX_GRID_BIG") var RICON_BOX_GRID_BIG;
    @:native("RICON_OK_TICK") var RICON_OK_TICK;
    @:native("RICON_CROSS") var RICON_CROSS;
    @:native("RICON_ARROW_LEFT") var RICON_ARROW_LEFT;
    @:native("RICON_ARROW_RIGHT") var RICON_ARROW_RIGHT;
    @:native("RICON_ARROW_DOWN") var RICON_ARROW_DOWN;
    @:native("RICON_ARROW_UP") var RICON_ARROW_UP;
    @:native("RICON_ARROW_LEFT_FILL") var RICON_ARROW_LEFT_FILL;
    @:native("RICON_ARROW_RIGHT_FILL") var RICON_ARROW_RIGHT_FILL;
    @:native("RICON_ARROW_DOWN_FILL") var RICON_ARROW_DOWN_FILL;
    @:native("RICON_ARROW_UP_FILL") var RICON_ARROW_UP_FILL;
    @:native("RICON_AUDIO") var RICON_AUDIO;
    @:native("RICON_FX") var RICON_FX;
    @:native("RICON_WAVE") var RICON_WAVE;
    @:native("RICON_WAVE_SINUS") var RICON_WAVE_SINUS;
    @:native("RICON_WAVE_SQUARE") var RICON_WAVE_SQUARE;
    @:native("RICON_WAVE_TRIANGULAR") var RICON_WAVE_TRIANGULAR;
    @:native("RICON_CROSS_SMALL") var RICON_CROSS_SMALL;
    @:native("RICON_PLAYER_PREVIOUS") var RICON_PLAYER_PREVIOUS;
    @:native("RICON_PLAYER_PLAY_BACK") var RICON_PLAYER_PLAY_BACK;
    @:native("RICON_PLAYER_PLAY") var RICON_PLAYER_PLAY;
    @:native("RICON_PLAYER_PAUSE") var RICON_PLAYER_PAUSE;
    @:native("RICON_PLAYER_STOP") var RICON_PLAYER_STOP;
    @:native("RICON_PLAYER_NEXT") var RICON_PLAYER_NEXT;
    @:native("RICON_PLAYER_RECORD") var RICON_PLAYER_RECORD;
    @:native("RICON_MAGNET") var RICON_MAGNET;
    @:native("RICON_LOCK_CLOSE") var RICON_LOCK_CLOSE;
    @:native("RICON_LOCK_OPEN") var RICON_LOCK_OPEN;
    @:native("RICON_CLOCK") var RICON_CLOCK;
    @:native("RICON_TOOLS") var RICON_TOOLS;
    @:native("RICON_GEAR") var RICON_GEAR;
    @:native("RICON_GEAR_BIG") var RICON_GEAR_BIG;
    @:native("RICON_BIN") var RICON_BIN;
    @:native("RICON_HAND_POINTER") var RICON_HAND_POINTER;
    @:native("RICON_LASER") var RICON_LASER;
    @:native("RICON_COIN") var RICON_COIN;
    @:native("RICON_EXPLOSION") var RICON_EXPLOSION;
    @:native("RICON_1UP") var RICON_1UP;
    @:native("RICON_PLAYER") var RICON_PLAYER;
    @:native("RICON_PLAYER_JUMP") var RICON_PLAYER_JUMP;
    @:native("RICON_KEY") var RICON_KEY;
    @:native("RICON_DEMON") var RICON_DEMON;
    @:native("RICON_TEXT_POPUP") var RICON_TEXT_POPUP;
    @:native("RICON_GEAR_EX") var RICON_GEAR_EX;
    @:native("RICON_CRACK") var RICON_CRACK;
    @:native("RICON_CRACK_POINTS") var RICON_CRACK_POINTS;
    @:native("RICON_STAR") var RICON_STAR;
    @:native("RICON_DOOR") var RICON_DOOR;
    @:native("RICON_EXIT") var RICON_EXIT;
    @:native("RICON_MODE_2D") var RICON_MODE_2D;
    @:native("RICON_MODE_3D") var RICON_MODE_3D;
    @:native("RICON_CUBE") var RICON_CUBE;
    @:native("RICON_CUBE_FACE_TOP") var RICON_CUBE_FACE_TOP;
    @:native("RICON_CUBE_FACE_LEFT") var RICON_CUBE_FACE_LEFT;
    @:native("RICON_CUBE_FACE_FRONT") var RICON_CUBE_FACE_FRONT;
    @:native("RICON_CUBE_FACE_BOTTOM") var RICON_CUBE_FACE_BOTTOM;
    @:native("RICON_CUBE_FACE_RIGHT") var RICON_CUBE_FACE_RIGHT;
    @:native("RICON_CUBE_FACE_BACK") var RICON_CUBE_FACE_BACK;
    @:native("RICON_CAMERA") var RICON_CAMERA;
    @:native("RICON_SPECIAL") var RICON_SPECIAL;
    @:native("RICON_LINK_NET") var RICON_LINK_NET;
    @:native("RICON_LINK_BOXES") var RICON_LINK_BOXES;
    @:native("RICON_LINK_MULTI") var RICON_LINK_MULTI;
    @:native("RICON_LINK") var RICON_LINK;
    @:native("RICON_LINK_BROKE") var RICON_LINK_BROKE;
    @:native("RICON_TEXT_NOTES") var RICON_TEXT_NOTES;
    @:native("RICON_NOTEBOOK") var RICON_NOTEBOOK;
    @:native("RICON_SUITCASE") var RICON_SUITCASE;
    @:native("RICON_SUITCASE_ZIP") var RICON_SUITCASE_ZIP;
    @:native("RICON_MAILBOX") var RICON_MAILBOX;
    @:native("RICON_MONITOR") var RICON_MONITOR;
    @:native("RICON_PRINTER") var RICON_PRINTER;
    @:native("RICON_PHOTO_CAMERA") var RICON_PHOTO_CAMERA;
    @:native("RICON_PHOTO_CAMERA_FLASH") var RICON_PHOTO_CAMERA_FLASH;
    @:native("RICON_HOUSE") var RICON_HOUSE;
    @:native("RICON_HEART") var RICON_HEART;
    @:native("RICON_CORNER") var RICON_CORNER;
    @:native("RICON_VERTICAL_BARS") var RICON_VERTICAL_BARS;
    @:native("RICON_VERTICAL_BARS_FILL") var RICON_VERTICAL_BARS_FILL;
    @:native("RICON_LIFE_BARS") var RICON_LIFE_BARS;
    @:native("RICON_INFO") var RICON_INFO;
    @:native("RICON_CROSSLINE") var RICON_CROSSLINE;
    @:native("RICON_HELP") var RICON_HELP;
    @:native("RICON_FILETYPE_ALPHA") var RICON_FILETYPE_ALPHA;
    @:native("RICON_FILETYPE_HOME") var RICON_FILETYPE_HOME;
    @:native("RICON_LAYERS_VISIBLE") var RICON_LAYERS_VISIBLE;
    @:native("RICON_LAYERS") var RICON_LAYERS;
    @:native("RICON_WINDOW") var RICON_WINDOW;
    @:native("RICON_HIDPI") var RICON_HIDPI;
    @:native("RICON_200") var RICON_200;
    @:native("RICON_201") var RICON_201;
    @:native("RICON_202") var RICON_202;
    @:native("RICON_203") var RICON_203;
    @:native("RICON_204") var RICON_204;
    @:native("RICON_205") var RICON_205;
    @:native("RICON_206") var RICON_206;
    @:native("RICON_207") var RICON_207;
    @:native("RICON_208") var RICON_208;
    @:native("RICON_209") var RICON_209;
    @:native("RICON_210") var RICON_210;
    @:native("RICON_211") var RICON_211;
    @:native("RICON_212") var RICON_212;
    @:native("RICON_213") var RICON_213;
    @:native("RICON_214") var RICON_214;
    @:native("RICON_215") var RICON_215;
    @:native("RICON_216") var RICON_216;
    @:native("RICON_217") var RICON_217;
    @:native("RICON_218") var RICON_218;
    @:native("RICON_219") var RICON_219;
    @:native("RICON_220") var RICON_220;
    @:native("RICON_221") var RICON_221;
    @:native("RICON_222") var RICON_222;
    @:native("RICON_223") var RICON_223;
    @:native("RICON_224") var RICON_224;
    @:native("RICON_225") var RICON_225;
    @:native("RICON_226") var RICON_226;
    @:native("RICON_227") var RICON_227;
    @:native("RICON_228") var RICON_228;
    @:native("RICON_229") var RICON_229;
    @:native("RICON_230") var RICON_230;
    @:native("RICON_231") var RICON_231;
    @:native("RICON_232") var RICON_232;
    @:native("RICON_233") var RICON_233;
    @:native("RICON_234") var RICON_234;
    @:native("RICON_235") var RICON_235;
    @:native("RICON_236") var RICON_236;
    @:native("RICON_237") var RICON_237;
    @:native("RICON_238") var RICON_238;
    @:native("RICON_239") var RICON_239;
    @:native("RICON_240") var RICON_240;
    @:native("RICON_241") var RICON_241;
    @:native("RICON_242") var RICON_242;
    @:native("RICON_243") var RICON_243;
    @:native("RICON_244") var RICON_244;
    @:native("RICON_245") var RICON_245;
    @:native("RICON_246") var RICON_246;
    @:native("RICON_247") var RICON_247;
    @:native("RICON_248") var RICON_248;
    @:native("RICON_249") var RICON_249;
    @:native("RICON_250") var RICON_250;
    @:native("RICON_251") var RICON_251;
    @:native("RICON_252") var RICON_252;
    @:native("RICON_253") var RICON_253;
    @:native("RICON_254") var RICON_254;
    @:native("RICON_255") var RICON_255;
}
