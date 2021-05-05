	;------------------gui position global
gui_pos_w := (A_ScreenWidth - 50)- gui_w
gui_pos_h := (A_ScreenHeight -50) - gui_h

Gui, Main:-AlwaysOnTop -Caption +ToolWindow
Gui, Main:show, x%gui_pos_w% y%gui_pos_h% w%gui_w% h%gui_h% , Gui
return
